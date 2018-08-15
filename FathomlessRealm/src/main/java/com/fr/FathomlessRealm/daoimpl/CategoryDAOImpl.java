package com.fr.FathomlessRealm.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fr.FathomlessRealm.dao.CategoryDAO;
import com.fr.FathomlessRealm.model.Category;

@Repository
public class CategoryDAOImpl implements CategoryDAO{
	
	@Autowired
	SessionFactory sessionFactory;

	public boolean addCategory(Category category) {
		try {
			category.setCategoryRegisterDate();
			Session s=sessionFactory.openSession();
			Transaction t=s.beginTransaction();
			s.save(category);
			t.commit();
			s.close();
			return true;
			
		} catch (Exception e) {
			return false;
		}
	}

	public Category getCategory(int categoryId) {
		// TODO Auto-generated method stub
		try {
			
			Session s=sessionFactory.openSession();
			Transaction t=s.beginTransaction();
			Category cat=s.get(Category.class, categoryId);
			t.commit();
			s.close();
			return cat;
			
		} catch (Exception e) {
			return null;
		}
	}

	public boolean UpdateCategory(Category category) {
		try {
			category.setCategoryRegisterDate();
			Session s=sessionFactory.openSession();
			Transaction t=s.beginTransaction();
			s.saveOrUpdate(category);
			t.commit();
			s.close();
			return true;
			
		} catch (Exception e) {
			return false;
		}
		
	}

	public boolean DeleteCategory(int categoryId) {
		
		try {
		
		Session s=sessionFactory.openSession();
		Transaction t=s.beginTransaction();
		Category cat=s.get(Category.class, categoryId);
		s.delete(cat);
		t.commit();
		s.close();
		return true;
		
	} catch (Exception e) {
		return false;
	}
		
	}

	public List<Category> allCategory() {
		List<Category> allmyCategory;
		try {
			Session s=sessionFactory.openSession();
			//Transaction t=s.beginTransaction();
		allmyCategory=s.createQuery("From Category").list();
		return allmyCategory;
		}
		catch(Exception e){
			e.printStackTrace();
			return null;
		}
		
}
}
