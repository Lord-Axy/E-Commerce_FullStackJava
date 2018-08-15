package com.fr.Raven.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fr.FathomlessRealm.dao.LoginDAO;
import com.fr.FathomlessRealm.model.Login;

@Controller
public class LoginController {

	@Autowired
	LoginDAO logindao;
	
	
	
	@RequestMapping(value="/logincheck")
	public String loginuser(@ModelAttribute("loginAgent")Login login , HttpServletResponse response)
	{
		
		try{
		if(logindao.validateUser(login))
		{
			Cookie username = new Cookie("username", login.getUserName());
			username.setMaxAge(60*60*24);
			response.addCookie(username);
			return "redirect:/";
		}
		else
		{
			throw new Exception();
		}
		}
		catch(Exception e){
			return "redirect:/login";
		}
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpServletRequest request,HttpServletResponse response){
		Cookie[] cookie=request.getCookies();
		
		for(Cookie c:cookie)
		{
			if(c.getName().equals("username"))
			{
				logindao.logOut(c.getValue());
			}
			c.setMaxAge(0);
			response.addCookie(c);
			
		}
		
		return "redirect:/";
	}
}
