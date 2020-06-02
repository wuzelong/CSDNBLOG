package jmu.wzl.dao;

import java.util.List;
import jmu.wzl.bean.Product;

public interface ProductMapper {
    int deleteByPrimaryKey(Integer pid);

    int insert(Product record);

    Product selectByPrimaryKey(Integer pid);

    List<Product> selectAll();

    int updateByPrimaryKey(Product record);
    
    List<Product> selectSearch(String condition);
}