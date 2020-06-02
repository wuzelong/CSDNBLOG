package jmu.wzl.test;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import jmu.wzl.dao.ProductMapper;
import jmu.wzl.dao.UserMapper;


/**
 * 
 * 测试dao层
 * @param args
 * Spring项目使用Spring单元测试，自动注入组件
 * 1.导入SpringTest模块
 * 2.@ContextConfiguration指定配置文件位置
 * 3.直接使用autowired要使用的组件
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath*:applicationContext.xml")
public class MapperTest {
	@Autowired
	UserMapper userMapper;
	@Autowired
	ProductMapper productMapper;
	/***
	 * 测试UserMapper
	 */
	@Test
	public void test(){
		/*
		//创建SpringIOC容器
		ClassPathXmlApplicationContext ioc=new ClassPathXmlApplicationContext("applicationContext.xml");
		//2.从容器中获取mapper
		ioc.getBean(UserMapper.class);
		*/
		
		System.out.println(userMapper);
		//1.插入

		System.out.println(productMapper);
		
		System.out.println("finish");
	}

}
