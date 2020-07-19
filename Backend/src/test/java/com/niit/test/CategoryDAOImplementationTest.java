package com.niit.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;

public class CategoryDAOImplementationTest {

	public static void main(String[] args) {
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		
		context.scan("com.niit");
		
		context.refresh();
		
		CategoryDAO categoryDAO = (CategoryDAO)context.getBean("categoryDAO");
		
		Category category = new Category();
		
		category.setCategoryName("Asus");
		
		category.setCategoryDesc("Asus laptops and mobiles");
		
		categoryDAO.addCategory(category);
		



	}

}
