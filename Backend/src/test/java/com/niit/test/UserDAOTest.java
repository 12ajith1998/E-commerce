package com.niit.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.UserDAO;
import com.niit.model.User;

public class UserDAOTest {

	static UserDAO userdao; 
	
	@BeforeClass
	public static void intialize(){
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		userdao = (UserDAO)context.getBean("userDAO");
	}
	
	@Test
	public void registerUserTest(){
		
		User user = new User();
		user.setCustomerName("Ajiii");
		user.setEmailID("Ajiii@gmail.com");
		user.setEnabled("enabled");
		user.setMobileNo("90474789");
		user.setPassword("90474789");
		user.setRole("admin");
		user.setUserName("admin");
		assertTrue("error in registering user:",userdao.registerUser(user));
	}
	@Ignore
	@Test
	public void modifyUserTest(){
		
		User user = new User();
		user.setCustomerName("AK");
		user.setEmailID("Ak@gmail.com");
		user.setEnabled("enabled");
		user.setMobileNo("90474789");
		user.setPassword("ajith");
		user.setRole("admin");
		user.setUserName("admin1");
		assertTrue("error in registering user:",userdao.modifyUser(user));
	}

	@Test
	public void listUserTest()
	{
		List<User> listuser =userdao.listUser();
		assertNotNull("problem in listing:",listuser);
		
		for(User user:listuser)
		{
			System.out.println(user.getUserName()+":::");
			System.out.println(user.getMobileNo()+":::");
			System.out.println(user.getEmailID());
	}
}
}
