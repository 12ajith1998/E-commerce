package com.niit.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.OrderDAO;

import com.niit.model.OrderDetail;

import jdk.nashorn.internal.ir.annotations.Ignore;

public class OrderDAOTest {

	static OrderDAO orderdao;
	
	@BeforeClass
	public static void intialize(){
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		
		context.scan("com.niit");
		
		context.refresh();
		
		orderdao = (OrderDAO)context.getBean("orderDAO");
	}
	
	@Ignore
	@Test
	public void insertOrderDetailTest() 
	{
		OrderDetail orderDetail = new OrderDetail();
		orderDetail.setUsername("Ajith");
		orderDetail.setOrderDate(null);
		orderDetail.setPmode("NP");
		orderDetail.setTotalShoppingAmount(10000);
		orderDetail.setOrderId(1);
		assertTrue("problem in adding OrderDetail:",orderdao.insertOrderDetail(orderDetail));
		
		
	}

}
