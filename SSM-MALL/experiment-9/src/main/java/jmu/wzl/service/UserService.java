package jmu.wzl.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jmu.wzl.bean.User;
import jmu.wzl.dao.UserMapper;

@Service
public class UserService {
	@Autowired
	UserMapper userMapper;
	/**
	 * 保存用户
	 * @param user
	 */
	public void saveUser(User user) {
		System.out.println("into UserService");
		userMapper.insert(user);
	}
	/**
	 * 通过用户名查找用户
	 * @param name
	 * @return
	 */
	public User getUserByName(String name) {
		return userMapper.selectByName(name);
	}
	/**
	 * 通过id和密码检查是否存在该用户并返回
	 * @param user
	 * @return
	 */
	public User checkUser(@Param(value = "uid") Integer uid,@Param(value="password") String password) {
		System.out.println("into userService");
		return userMapper.selectByIdPass(uid,password);
	}
	/**
	 * 通过id获取用户
	 * @param uid
	 * @return
	 */
	public User getUserById(Integer uid) {
		return userMapper.selectByPrimaryKey(uid);
	}
	/**
	 * 更新用户
	 * @param user
	 */
	public void updateUser(User user) {
		userMapper.updateByPrimaryKey(user);
	}
}
