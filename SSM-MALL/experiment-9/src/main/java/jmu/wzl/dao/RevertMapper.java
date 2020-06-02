package jmu.wzl.dao;

import java.util.List;
import jmu.wzl.bean.Revert;

public interface RevertMapper {
    int deleteByPrimaryKey(Integer rid);

    int insert(Revert record);

    Revert selectByPrimaryKey(Integer rid);

    List<Revert> selectAll();

    int updateByPrimaryKey(Revert record);
    
    List<Revert> selectByMidWithNames(Integer mid);
}