package jmu.wzl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import jmu.wzl.bean.Msg;
import jmu.wzl.bean.Product;
import jmu.wzl.service.ProductService;

/**
 * 
 * 处理商品请求
 * @author 唔仄lo咚锵
 *
 */
@Controller
public class ProductController {
	@Autowired
	ProductService productService;
	/**
	 * 导入jackson包
	 * 查询商品数据（分页查询）-admin
	 * @return
	 */
	@RequestMapping("/pros")
	@ResponseBody
	public Msg getProsWithJson(@RequestParam(value="pn",defaultValue="1")Integer pn){
		System.out.println("into ProductController");
		PageHelper.startPage(pn,5);
		List<Product> pros=productService.getAll();
		//使用pageInfo封装查询后的结果
		PageInfo page=new PageInfo(pros,5);//连续显示5页
		return Msg.success().add("pageInfo", page);
	}
	/**
	 * 模糊查询商品-admin
	 * @param pn
	 * @return
	 */
	@RequestMapping(value="/pros/search", produces = "application/json;charset=utf-8", method = RequestMethod.POST)
	@ResponseBody
	public Msg getProsWithSearch(@RequestParam(value="condition") String condition,
			@RequestParam(value="pn",defaultValue="1")Integer pn){
		PageHelper.startPage(pn,5);
		List<Product> pros=productService.getSearch(condition);
		//使用pageInfo封装查询后的结果
		PageInfo page=new PageInfo(pros,5);//连续显示5页
		return Msg.success().add("pageInfo", page);
	}
	
	/**
	 * 导入jackson包
	 * 查询商品数据（分页查询）-user
	 * @return
	 */
	@RequestMapping("/pros_user")
	@ResponseBody
	public Msg getProsWithJsonU(@RequestParam(value="pn",defaultValue="1")Integer pn){
		System.out.println("into ProductController");
		PageHelper.startPage(pn,9);
		List<Product> pros=productService.getAll();
		//使用pageInfo封装查询后的结果
		PageInfo page=new PageInfo(pros,5);//连续显示9页
		return Msg.success().add("pageInfo", page);
	}
	/**
	 * 模糊查询商品-user
	 * @param pn
	 * @return
	 */
	@RequestMapping(value="/pros_user/search", produces = "application/json;charset=utf-8", method = RequestMethod.POST)
	@ResponseBody
	public Msg getProsWithSearchU(@RequestParam(value="condition") String condition,
			@RequestParam(value="pn",defaultValue="1")Integer pn){
		PageHelper.startPage(pn,9);
		List<Product> pros=productService.getSearch(condition);
		//使用pageInfo封装查询后的结果
		PageInfo page=new PageInfo(pros,5);//连续显示9页
		return Msg.success().add("pageInfo", page);
	}
	/**
	 * 商品保存（插入）
	 * 2、导入Hibernate-Validator
	 */
	@PostMapping("/pro")
	@ResponseBody
	public Msg savePro( Product product, BindingResult result){
		productService.savePro(product);
		return Msg.success();
	}
	/**
     * 根据pid查询商品
     * @param pid
     * @return
     */
    @GetMapping("/pro/{pid}")
    @ResponseBody
    public Msg getPro(@PathVariable("pid") Integer pid){
        Product product = productService.getPro(pid);
        return Msg.success().add("pro",product);
    }
	/**
	 * 更新商品
	 * 要能支持直接发送PUT之类的请求，还要封装请求体中的数据
     * 1、配置上HttpputFormContentFilter；
     * 2、作用：将请求体中的数据解析包装成一个map。
     * 3、request被重新包装，request.getParameter()被重写，就会从自己封装的map中取数据
	 * @param product
	 * @return
	 */
    @PutMapping("/pro/{pid}")
    @ResponseBody
    public Msg savePro(Product product){
    	productService.updatePro(product);
    	return Msg.success();
    }
    /**
     * 单个批量二合一
     * 批量删除：如1-2-3
     * 单个删除：1
     * @param ids
     * @return
     */
    @ResponseBody
    @DeleteMapping("/pro/{pids}")
    public Msg deleteProById(@PathVariable("pids") String pids){
        if (pids.contains("-")){
            String[] str_ids = pids.split("-");
            for (String string : str_ids){
            	productService.deletePro(Integer.parseInt(string));
            }
        }else{
            Integer pid = Integer.parseInt(pids);
            productService.deletePro(pid);
        }
        return Msg.success();
    }
}
