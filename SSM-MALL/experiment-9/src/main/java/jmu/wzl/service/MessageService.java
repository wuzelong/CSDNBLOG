package jmu.wzl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import jmu.wzl.bean.Message;
import jmu.wzl.bean.Msg;
import jmu.wzl.dao.MessageMapper;

@Service
public class MessageService {
	@Autowired
	MessageMapper messageMapper;
	/**
	 * 新增留言
	 * @param message
	 */
	public void saveMes(Message message){
		messageMapper.insert(message);
	}
	/**
	 * 查询所有留言
	 * @return
	 */
	public List<Message> getAll() {
		System.out.println("into MessageService");
		return messageMapper.selectAll();
	}
	/**
	 * 通过id查找留言(连表带name)
	 * @param mid
	 * @return
	 */
	public Message getMessageById(Integer mid) {
		return messageMapper.selectByPrimaryKeyWithNames(mid);
	}
	
	/**
	 * 查询某用户的所有留言
	 * @param uid
	 * @return
	 */
	public List<Message> getSearch(Integer uid) {
		return messageMapper.selectByUid(uid);
	}
	
	/**
	 * 删除留言
	 * @param mid
	 */
	public void deleteMessage(Integer mid) {
		messageMapper.deleteByPrimaryKey(mid);
	}
	
}