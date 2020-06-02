package jmu.wzl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jmu.wzl.bean.Revert;
import jmu.wzl.dao.RevertMapper;

@Service
public class RevertService {
	@Autowired
	RevertMapper revertMapper;
	/**
	 * 新增回复
	 * @param revert
	 */
	public void saveRevert(Revert revert) {
		revertMapper.insert(revert);
	}
	
	/**
	 * 查询某留言下的所有回复
	 * @return
	 */
	public List<Revert> getAll(Integer mid) {
		System.out.println("into revertService");
		return revertMapper.selectByMidWithNames(mid);
	}
	
	/**
	 * 删除回复
	 * @param rid
	 */
	public void deleteMessage(Integer rid) {
		revertMapper.deleteByPrimaryKey(rid);
	}

}
