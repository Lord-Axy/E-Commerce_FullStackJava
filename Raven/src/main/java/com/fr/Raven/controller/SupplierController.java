package com.fr.Raven.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fr.FathomlessRealm.dao.SupplierDAO;

import com.fr.FathomlessRealm.model.Supplier;

@Controller
public class SupplierController {

	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping("/supplier")
	public ModelAndView register(){
	ModelAndView m=new ModelAndView("supplier");
	m.addObject("supplierAgent", new Supplier());
	m.addObject("suplist", supplierDAO.allSupplier());
	m.addObject("check",true);
		return m;	
	}
	@RequestMapping(value="supplierRegister" , params="add supplier")
	public String AddSupplier(@ModelAttribute("supplierAgent") Supplier supplier)
	{
		if(supplierDAO.addsupplier(supplier))
		{
			return "redirect:/supplier";
		}
		else
		{
			return "login";
		}
		
	}
	
	@RequestMapping("/deletesupplier")
	public String deleteCategory(@RequestParam("getsupid") int supId)
	{
		if(supplierDAO.DeleteSupplier(supId))
		{
			return "redirect:/supplier";
		}else
		{
			return "redirect:/supplier";
		}
		
	}
	

	@RequestMapping("/editsupplier")
	public ModelAndView editcategoryregister(@RequestParam("getsupid") int supId){
	ModelAndView m=new ModelAndView("supplier");
	m.addObject("supplierAgent", supplierDAO.getSupplier(supId));
	m.addObject("suplist", supplierDAO.allSupplier());
	m.addObject("check",false);
		return m;	
	}
	@RequestMapping(value="supplierRegister",params="update supplier")
	public String UpdateCategory(@ModelAttribute("supplierAgent") Supplier supplier)
	{
		if(supplierDAO.UpdateSupplier(supplier))
		{
			return "redirect:/supplier";
		}else
		{
			return "redirect:/supplier";
		}
		
	}
}
