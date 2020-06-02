package jmu.wzl.test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import jmu.wzl.bean.Product;
import jmu.wzl.service.ProductService;

public class TestCRUD {
	
    @Test
    public void testTransfer(){
        ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
        ProductService productMapper=(ProductService) ac.getBean("productService");
        List<Product> list =productMapper.getAll();
        System.out.println( list.size());
    }
	

}
