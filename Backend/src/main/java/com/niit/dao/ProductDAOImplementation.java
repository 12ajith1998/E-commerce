package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Product;

@Repository("productDAO")
@Transactional
public class ProductDAOImplementation implements ProductDAO{

	@Autowired
	SessionFactory sessionfactory;
	
	public boolean addProduct(Product product) {
		try
		{
			sessionfactory.getCurrentSession().save(product);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}

	public boolean updateProduct(Product product) {
		try
		{
			sessionfactory.getCurrentSession().update(product);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}

	public boolean deleteProduct(Product product) {
		try
		{
			sessionfactory.getCurrentSession().delete(product);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}

	public List<Product> listProduct() {
		Session session = sessionfactory.openSession();
		Query query = session.createQuery("from Product");
		List<Product> listproduct = query.list();
		session.close();
		return listproduct;
		
	}

	public Product getProduct(int productID) {
		Session session = sessionfactory.openSession();
		Product product = session.get(Product.class, productID);
		session.close();
		return product;
	}

}
