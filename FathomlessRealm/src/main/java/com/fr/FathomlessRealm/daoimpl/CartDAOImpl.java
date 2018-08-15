package com.fr.FathomlessRealm.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fr.FathomlessRealm.dao.CartDAO;
import com.fr.FathomlessRealm.model.Cart;

@Repository
public class CartDAOImpl implements CartDAO {

	@Autowired
	SessionFactory sessionFactory;

	public boolean addTocart(Cart cart) {
		try {
			Session s = sessionFactory.openSession();
			Transaction t = s.beginTransaction();
			s.saveOrUpdate(cart);
			t.commit();
			s.close();
			return true;

		} catch (Exception e) {
			return false;
		}
	}

	public boolean removeFromCart(int cartId) {
		try {

			Session s = sessionFactory.openSession();
			Transaction t = s.beginTransaction();
			Cart cat = s.get(Cart.class, cartId);
			s.delete(cat);
			t.commit();
			s.close();
			return true;

		} catch (Exception e) {
			return false;
		}
	}

	public List<Cart> getUserCart(String userName) {
		List<Cart> allprodincart;
		try {
		Session s = sessionFactory.openSession();
		Transaction t =s.beginTransaction();
		Criteria criteria = s.createCriteria(Cart.class);
		criteria.add(Restrictions.eq("userName", userName));
		allprodincart = criteria.list();
		return allprodincart;
	}catch(Exception e) {
		return null;
		
	}
	}

	public Cart singleProductFromCart(int productId, String userName) {
		// TODO Auto-generated method stub
		Cart singleProduct = null;
		try {
			Session s = sessionFactory.openSession();
			Transaction t = s.beginTransaction();
			Criteria criteria = s.createCriteria(Cart.class);
			criteria.add(Restrictions.eq("productId", productId));
			criteria.add(Restrictions.eq("userName", userName));
			criteria.add(Restrictions.eq("cartStatus", true));
			singleProduct = (Cart) criteria.list().get(0);
			return singleProduct;
		} catch (Exception e) {
			// TODO: handle exception
			return singleProduct;
		}
	}

}
