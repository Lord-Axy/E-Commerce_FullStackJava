package com.fr.FathomlessRealm.daoimpl;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.fr.FathomlessRealm.dao.UserDAO;
import com.fr.FathomlessRealm.model.User;

@Repository
public class UserDAOImpl implements UserDAO{
	
	@Autowired
	SessionFactory sessionFactory;

	public boolean addUser(User user) {
		try {
			user.setUserRegisterDate();
			Session s=sessionFactory.openSession();
			Transaction t=s.beginTransaction();
			s.save(user);
			t.commit();
			s.close();
			return true;
			
		} catch (Exception e) {
			return false;
		}
	}

	public User getUser(String Username) {
		// TODO Auto-generated method stub
		
		User user=sessionFactory.getCurrentSession().get(User.class, Username);
		return user;
	}

	public void UpdateUser(User user) {
		// TODO Auto-generated method stub
		
	}

	public void DeleteUser(User user) {
		// TODO Auto-generated method stub
		
	}
	
	public List<User> allUsers() {
		// TODO Auto-generated method stub
		List<User> allmyusers=sessionFactory.getCurrentSession().createQuery("From User").list();
		return allmyusers;
	}
}
