package com.fr.Raven.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BaseController {
	
	
	
	@RequestMapping("/")
	public String index()
	{
		return "index";		
	}
	
	@RequestMapping("/aboutus")
    public String aboutus()
	{
		return "aboutus";
	}
	
	@RequestMapping("/contactus")
	public String contactus()
	{
		return "contactus";
	}
	@RequestMapping("/index")
	public String main()
	{
		return "redirect:/";		
	}
	
}
