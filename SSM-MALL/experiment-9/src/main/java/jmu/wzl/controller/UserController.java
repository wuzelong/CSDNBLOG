package jmu.wzl.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.mysql.cj.Session;

import jmu.wzl.bean.Msg;
import jmu.wzl.bean.Product;
import jmu.wzl.bean.User;
import jmu.wzl.service.UserService;

/**
 * 处理用户请求
 * @author 唔仄lo咚锵
 *
 */
@Controller
public class UserController {
	@Autowired
	UserService userService;
	/**
	 * 支持jsr303校验
	 * 用户保存（注册）
	 */
	@PostMapping("/user")
	@ResponseBody
	public Msg saveUser(@Valid User user,BindingResult result){
		if (result.hasErrors()){
	            Map<String,Object> map = new HashMap<>();
	            //校验失败，应该返回失败，在模态框中显示校验失败的错误信息
	            List<FieldError> errors = result.getFieldErrors();
	            for (FieldError fieldError:errors){
	                System.out.println("错误的字段名："+fieldError.getField());
	                System.out.println("错误信息："+fieldError.getDefaultMessage());
	                map.put(fieldError.getField(),fieldError.getDefaultMessage());
	            }
	            return Msg.fail().add("errorFields",map);
	        }else {
	        	userService.saveUser(user);
	    		return Msg.success();
	        }
	}
	/**
	 * 通过用户名查找用户
	 * @param name
	 * @return
	 */
	@RequestMapping("/users")
	@ResponseBody
	public Msg getUserByName(String name){
		User user=userService.getUserByName(name);
		return Msg.success().add("userNow", user);
	}
	/**
	 * 拦截跳转界面SSM-MALL请求
	 * 1.已登录->检查role并相应跳转界面
	 * 2.未登录
	 * 2.1获取不到表单提交的账密->盗链界面
	 * 2.2.1id和密码不正确->登录失败界面
	 * 2.2.2登录成功，role是管理员->后台管理界面
	 * 2.2.3登录成功，role是用户->用户界面
	 * @param user
	 * @param result
	 * @return
	 */
	@PostMapping("/SSM-MALL")
	public String checkUser(@RequestParam(value="uid")Integer uid,
		@RequestParam(value="password")String password,HttpSession session){
		System.out.println("into userController");
		User userRtn=userService.checkUser(uid,password);
		System.out.println(userRtn);
		if(userRtn==null)//账密错误
			return "login_failure";
		else{//登录成功
			session.setAttribute("logined",userRtn.getUid());
			session.setAttribute("role", userRtn.getRole());
			if("admins".equals(userRtn.getRole()))
				return "SSM-MALLadmin";			
			else return "SSM-MALLuser";			
		}						
	}
	@GetMapping("/SSM-MALL")
	public String checkSteal(HttpSession session){
		System.out.println("into checkSteael");
		if(session.getAttribute("logined")!=null){//已登录
			if("admins".equals(session.getAttribute("role").toString()))
				return "SSM-MALLadmin";	
			else return "SSM-MALLuser";
		}	
		else return "login_illegal";	
	}
	/**
     * 根据uid查询用户
     * @param pid
     * @return
     */
    @GetMapping("/user/{uid}")
    @ResponseBody
    public Msg getUserById(@PathVariable("uid") Integer uid){
        User user = userService.getUserById(uid);
        return Msg.success().add("user",user);
    }
	/**
	 * 支持jsr303校验
	 * 用户修改资料
	 */
	@PostMapping("/user/update")
	@ResponseBody
	public Msg updateUser(@Valid User user,BindingResult result){
		if (result.hasErrors()){
	            Map<String,Object> map = new HashMap<>();
	            //校验失败，应该返回失败，在模态框中显示校验失败的错误信息
	            List<FieldError> errors = result.getFieldErrors();
	            for (FieldError fieldError:errors){
	                System.out.println("错误的字段名："+fieldError.getField());
	                System.out.println("错误信息："+fieldError.getDefaultMessage());
	                map.put(fieldError.getField(),fieldError.getDefaultMessage());
	            }
	            return Msg.fail().add("errorFields",map);
	        }else {
	        	userService.updateUser(user);
	    		return Msg.success();
	        }
	}
}
