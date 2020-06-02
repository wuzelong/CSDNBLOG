package jmu.wzl.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.github.pagehelper.PageInfo;

import jmu.wzl.bean.Product;

//import jmu.wzl.bean.Product;

/**
 * 使用Spring测试模块测试请求功能
 * @author 唔仄lo咚锵
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations={"classpath:applicationContext.xml",
		"file:src/main/webapp/WEB-INF/dispatcherServlet-servlet.xml"})
public class MvcTest {
	//传入SpringMvc的ioc
	@Autowired
	WebApplicationContext context;
	//虚拟mvc请求，获取处理信息
	MockMvc mockMvc;
	
	@Before
	public void initMockMvc(){
		System.out.println(3);
		MockMvcBuilders.webAppContextSetup(context).build();
	}
	@Test
	public void testPage() throws Exception{
		MvcResult result= mockMvc.perform(MockMvcRequestBuilders.get("/pros").param("pn","1")).andReturn();
		//请求成功后，请求域有PageInfo，取出验证之
		MockHttpServletRequest request=result.getRequest();
		PageInfo pi=(PageInfo) request.getAttribute("pageInfo");
		System.out.println("当前页码:"+pi.getPageNum());;
		System.out.println("总记录数:"+pi.getTotal());
		System.out.println("连续显示页码:"+pi.getPageSize());
		
		//获取商品数据
		List<Product> list=pi.getList();
		System.out.println("size:"+list.size());
	}
}
