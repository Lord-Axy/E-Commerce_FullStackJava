package com.fr.FathomlessRealm.daoimpl;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fr.FathomlessRealm.dao.LoginDAO;
import com.fr.FathomlessRealm.model.Login;
import com.fr.FathomlessRealm.model.User;

@Repository
public class LoginDAOImpl implements LoginDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public boolean validateUser(Login login) {
		User loggedInuser;
		try {
			Session s = sessionFactory.openSession();
			loggedInuser = (User)s.get(User.class, login.getUserName());
			if(loggedInuser.getPassword().equals(login.getPassWord()))
			{
				login.setLogInTime();
				Transaction t=s.beginTransaction();
				s.saveOrUpdate(login);
				t.commit();
				s.close();
				return true;
			}
			else{
				throw new Exception();
			}
			
		} catch (Exception e) {
			return false;
		}

	}

	public boolean logOut(String username) {
		// TODO Auto-generated method stub
		try {
			Session s = sessionFactory.openSession();
			Transaction t=s.beginTransaction();
			Criteria criteria=s.createCriteria(Login.class);
			criteria.add(Restrictions.eq("userName", username));
			criteria.add(Restrictions.eq("loggedIn", true));
			Login loggedUser=(Login)criteria.list().get(0);
			loggedUser.setLogOutTime();
			loggedUser.setLoggedIn(false);
			s.saveOrUpdate(loggedUser);
			t.commit();
			s.close();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}

}
