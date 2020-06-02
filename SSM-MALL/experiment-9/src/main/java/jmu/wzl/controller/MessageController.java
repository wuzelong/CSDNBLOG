package jmu.wzl.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import jmu.wzl.bean.Message;
import jmu.wzl.bean.Msg;
import jmu.wzl.bean.Product;
import jmu.wzl.service.MessageService;

@Controller
public class MessageController {
	@Autowired
	MessageService messageService;
	/**
	 * 写留言（插入）
	 * @param message
	 * @return
	 */
	@PostMapping("/message")
	@ResponseBody
	public Msg saveMsg(Message message,BindingResult result){
		System.out.println("into messageController");
		SimpleDateFormat dateformat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss ");
		String time=dateformat.format(new Date());
		message.setTime(time);
		messageService.saveMes(message);
		return Msg.success();
	}
	/**
	 * 查询所有留言信息
	 * @param pn
	 * @return
	 */
	@RequestMapping("/messages")
	@ResponseBody
	public Msg getMessages(@RequestParam(value="pn",defaultValue="1")Integer pn){
		System.out.println("into MessageController");
		PageHelper.startPage(pn,5);
		List<Message> message=messageService.getAll();
		//使用pageInfo封装查询后的结果
		PageInfo page=new PageInfo(message,5);//连续显示5页
		return Msg.success().add("pageInfo", page);
	}
	/**
	 * 通过id查找留言
	 * @param mid
	 * @return
	 */
	@GetMapping("/message/{mid}")
	@ResponseBody
	public Msg getMessageById(@PathVariable("mid") Integer mid){
		Message message=messageService.getMessageById(mid);
		return Msg.success().add("message", message);
	}
	
	/**
	 * 根据用户uid查询用户的所有留言
	 * @param uid
	 * @param pn
	 * @return
	 */
	@PostMapping(value="/message/search")
	@ResponseBody
	public Msg getProsWithSearch(@RequestParam(value="uid") Integer uid,
			@RequestParam(value="pn",defaultValue="1")Integer pn){
		PageHelper.startPage(pn,5);
		List<Message> messages=messageService.getSearch(uid);
		//使用pageInfo封装查询后的结果
		PageInfo page=new PageInfo(messages,5);//连续显示5页
		return Msg.success().add("pageInfo", page);
	}
	
	/**
	 * 删除留言
	 * @param mid
	 * @return
	 */
	@DeleteMapping("/message/{mid}")
	@ResponseBody
    public Msg deleteProById(@PathVariable("mid") Integer mid){
        messageService.deleteMessage(mid);
        return Msg.success();
    }
}
