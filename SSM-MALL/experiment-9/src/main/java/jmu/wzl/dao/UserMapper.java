package jmu.wzl.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import jmu.wzl.bean.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer uid);

    int insert(User record);

    User selectByPrimaryKey(Integer uid);

    List<User> selectAll();

    int updateByPrimaryKey(User record);
    
    User selectByName(String name);
    
    User selectByIdPass(@Param(value = "uid")Integer uid,@Param(value="password")String password);
    
}