package com.fr.FathomlessRealm.dao;

import java.util.List;
import com.fr.FathomlessRealm.model.User;

public interface UserDAO {
	public boolean addUser(User user);
	public User getUser(String Username);
	public void UpdateUser(User user);
	public void DeleteUser(User user);
	public List<User> allUsers();
}
