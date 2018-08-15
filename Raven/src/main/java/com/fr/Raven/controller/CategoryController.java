package com.fr.Raven.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.fr.FathomlessRealm.dao.CategoryDAO;
import com.fr.FathomlessRealm.model.Category;

	@Controller
	public class CategoryController {
		
		@Autowired
		CategoryDAO categoryDAO;
		
		
		@RequestMapping("/category")
		public ModelAndView register(){
		ModelAndView m=new ModelAndView("category");
		m.addObject("categoryAgent", new Category());
		m.addObject("catlist", categoryDAO.allCategory());
		m.addObject("check",true);
			return m;	
		}
		
		@RequestMapping(value="categoryRegister",params="add category")
		public String AddCategory(@ModelAttribute("categoryAgent") Category category)
		{
			if(categoryDAO.addCategory(category))
			{
				return "redirect:/category";
			}
			else
			{
				return "login";
			}
			
		}
		
		@RequestMapping("/deletecategory")
		public String deleteCategory(@RequestParam("getcatid") int catId)
		{
			if(categoryDAO.DeleteCategory(catId))
			{
				return "redirect:/category";
			}else
			{
				return "redirect:/category";
			}
			
		}
		
		
		@RequestMapping("/editcategory")
		public ModelAndView editcategoryregister(@RequestParam("getcatid") int catId){
		ModelAndView m=new ModelAndView("category");
		m.addObject("categoryAgent", categoryDAO.getCategory(catId));
		m.addObject("catlist", categoryDAO.allCategory());
		m.addObject("check",false);
			return m;	
		}
		
		@RequestMapping(value="categoryRegister",params="update category")
		public String UpdateCategory(@ModelAttribute("categoryAgent") Category category)
		{
			if(categoryDAO.UpdateCategory(category))
			{
				return "redirect:/category";
			}else
			{
				return "redirect:/category";
			}
			
		}
		
	}


