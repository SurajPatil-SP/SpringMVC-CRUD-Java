package com.cjc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cjc.model.Employee;
import com.cjc.service.HomeService;

@Controller
public class HomeController {
	
	@Autowired
	HomeService hs;
	
	@RequestMapping("/")
	public String firstPage()
	{
		return "login";
	}
	
	@RequestMapping("register")
	public String preRegister()
	{
		return "register";
	}
	
	@RequestMapping("/reg")
	public String registerData(@ModelAttribute Employee e,Model m)
	{
		System.out.println(e.getId());
		int id=hs.saveData(e);
		if(id>0)
		{
			return "login";
		}
		else
		{
			m.addAttribute("msg1", "This ID Already Exists Please Enter Another ID");
			return "register";
		}
		
	}
	
	@RequestMapping("/log")
	public String loginCheck(@RequestParam("uname")String uname,@RequestParam("pwd")String pwd,Model m)
	{
		List<Employee>list=hs.loginCheck(uname, pwd);
		m.addAttribute("data", list);
		if(list.isEmpty())
		{
			m.addAttribute("msg", "Invalid Username or Password");
			return "login";
		}
		else
		{
			return "success";
		}
	}
	
	@RequestMapping("/edit")
	public String editRecord(@RequestParam("id") int id,Model m)
	{
		Employee emp=hs.editRecord(id);
		m.addAttribute("data", emp);
		return "update";
	}
	
	@RequestMapping("/update")
	public String updateRecord(@ModelAttribute Employee e,Model m)
	{
		List<Employee>list=hs.updateRecord(e);
		m.addAttribute("data", list);
		return "success";
	}
	
	@RequestMapping("/delete")
	public String deleteRecord(@RequestParam("id") int id,Model m)
	{
		List<Employee> list=hs.deleteRecord(id);
		m.addAttribute("data", list);
		return "success";
	}
	
	@RequestMapping("/add")
	public String addRecord()
	{
		return "register";
	}
	
	@RequestMapping("*")
	public String errorPage()
	{
		return "error";
	}

}
