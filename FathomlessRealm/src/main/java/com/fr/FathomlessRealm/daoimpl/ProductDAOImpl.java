package com.fr.FathomlessRealm.daoimpl;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.fr.FathomlessRealm.dao.ProductDAO;
import com.fr.FathomlessRealm.model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	SessionFactory sessionFactory;

	public boolean addProduct(Product product) {
		try {
			product.setProductRegisterDate();
			Session s=sessionFactory.openSession();
			Transaction t=s.beginTransaction();
			s.save(product);
			t.commit();
			s.close();
			return true;
			
		} catch (Exception e) {
			return false;
		}
	}

	public Product getProduct(int productId) {
		// TODO Auto-generated method stub
try {
			
			Session s=sessionFactory.openSession();
			Transaction t=s.beginTransaction();
			Product prod=s.get(Product.class, productId);
			t.commit();
			s.close();
			return prod;
			
		} catch (Exception e) {
			return null;
		}
		
	}

	public boolean UpdateProduct(Product product) {
		// TODO Auto-generated method stub
		try {
			product.setProductRegisterDate();
			Session s=sessionFactory.openSession();
			Transaction t=s.beginTransaction();
			s.saveOrUpdate(product);
			t.commit();
			s.close();
			return true;
			
		} catch (Exception e) {
			return false;
		}
		
	}

	public boolean DeleteProduct(int productId) {
		// TODO Auto-generated method stub
		try {
			
			Session s=sessionFactory.openSession();
			Transaction t=s.beginTransaction();
			Product prod=s.get(Product.class, productId);
			s.delete(prod);
			t.commit();
			s.close();
			return true;
			
		} catch (Exception e) {
			return false;
		}

		
	}

	public List<Product> allProduct() {
		List<Product> allmyProduct;
		try {
		Session s=sessionFactory.openSession();
		//Transaction t=s.beginTransaction();
		allmyProduct=s.createQuery("From Product").list();
		return allmyProduct;
		}
		catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

}
