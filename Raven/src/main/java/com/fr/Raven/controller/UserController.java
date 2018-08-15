package com.fr.Raven.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fr.FathomlessRealm.dao.UserDAO;
import com.fr.FathomlessRealm.model.Login;
import com.fr.FathomlessRealm.model.User;

@Controller
public class UserController {
	
	@Autowired
	UserDAO userDAO;
	
	
	@RequestMapping("/login")
	public ModelAndView register(){
	ModelAndView m=new ModelAndView("login");
	m.addObject("loginAgent",new Login());
	m.addObject("userAgent", new User());
		return m;	
	}
	
	@RequestMapping(value="/registerme")
	public String userregister(@ModelAttribute("userAgent") User user)
	{
		if(userDAO.addUser(user))
		{
			return "index";
		}
		else
		{
			return "login";
		}
		
	}
}
