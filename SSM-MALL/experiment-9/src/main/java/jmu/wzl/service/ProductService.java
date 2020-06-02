package jmu.wzl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import jmu.wzl.bean.Product;
import jmu.wzl.dao.ProductMapper;


@Service
public class ProductService {
	@Autowired
	ProductMapper productMapper;
	/**
	 * 查询所有商品
	 * @return
	 */
	public List<Product> getAll() {
		System.out.println("into ProductService");
		return productMapper.selectAll();
	}
	/**
	 * 模糊查询商品
	 * @return
	 */
	public List<Product> getSearch(String condition) {
		condition="%"+condition+"%";
		//System.out.println(condition);
		return productMapper.selectSearch(condition);
	}
	/**
	 * 新增商品
	 * @param product
	 */
	public void savePro(Product product){
		productMapper.insert(product);
		//System.out.println("save success");
	}
	/**
     * 按照商品pid查询商品
     * @param pid
     * @return
     */
    public Product getPro(Integer pid) {
        Product product = productMapper.selectByPrimaryKey(pid);
        return product;
    }
    /**
     * 商品更新
     * @param product
     */
	public void updatePro(Product product) {
		productMapper.updateByPrimaryKey(product);
	}
	/**
	 * 商品删除
	 * @param del_ids
	 */
	public void deletePro(Integer pid) {
		productMapper.deleteByPrimaryKey(pid);
	}
}
