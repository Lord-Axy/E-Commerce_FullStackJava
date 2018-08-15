package com.fr.FathomlessRealm.dao;

import com.fr.FathomlessRealm.model.Login;

public interface LoginDAO {
	public boolean validateUser(Login login);
	
	public boolean logOut(String username);
}
