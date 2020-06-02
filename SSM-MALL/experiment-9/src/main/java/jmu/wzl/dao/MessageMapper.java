package jmu.wzl.dao;

import java.util.List;
import jmu.wzl.bean.Message;

public interface MessageMapper {
    int deleteByPrimaryKey(Integer mid);

    int insert(Message record);

    Message selectByPrimaryKey(Integer mid);

    List<Message> selectAll();

    int updateByPrimaryKey(Message record);
    
    Message selectByPrimaryKeyWithNames(Integer mid);//连表查询待用户名和商品名
    
    List<Message> selectByUid(Integer uid);//查询用户的所有留言
}