package jmu.wzl.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import jmu.wzl.bean.Msg;
import jmu.wzl.bean.Revert;
import jmu.wzl.service.RevertService;

@Controller
public class RevertController {
	@Autowired
	RevertService revertService;
	
	/**
	 * 新增回复
	 * @param revert
	 * @param result
	 * @return
	 */
	@PostMapping("/revert")
	@ResponseBody
	public Msg saveRevert(Revert revert,BindingResult result){
		System.out.println("into revertController");
		SimpleDateFormat dateformat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss ");
		String time=dateformat.format(new Date());
		revert.setTime(time);
		revertService.saveRevert(revert);
		return Msg.success();
	}
	
	/**
	 * 查询某留言下的所有回复
	 * @param pn
	 * @param mid
	 * @return
	 */
	@PostMapping("/reverts")
	@ResponseBody
	public Msg getReverts(@RequestParam(value="pn",defaultValue="1")Integer pn,
			@RequestParam("mid") Integer mid){
		System.out.println("into revertController");
		PageHelper.startPage(pn,5);
		List<Revert> revert=revertService.getAll(mid);
		//使用pageInfo封装查询后的结果
		PageInfo page=new PageInfo(revert,5);//连续显示5页
		return Msg.success().add("pageInfo", page);
	}
	/**
	 * 删除回复
	 * @param mid
	 * @return
	 */
	@DeleteMapping("/revert/{rid}")
	@ResponseBody
    public Msg deleteProById(@PathVariable("rid") Integer rid){
        revertService.deleteMessage(rid);
        return Msg.success();
    }
}
