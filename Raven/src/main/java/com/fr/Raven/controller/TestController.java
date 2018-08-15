package com.fr.Raven.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {
	@RequestMapping("/test")
	public ModelAndView Cook(HttpServletResponse response,HttpServletRequest request){
		ModelAndView m = new ModelAndView("test");
		Cookie c = new Cookie("Axy", "Hello");
		Cookie c1 = new Cookie("Akshay", "Akshay");
		response.addCookie(c);
		response.addCookie(c1);
		Cookie[] s = request.getCookies();
		for(Cookie f : s) {
			System.out.println(f.getValue());
		}
		//m.addObject(c);
		return m;
	}
}
