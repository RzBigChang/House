package com.cs.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cs.entity.Power;
import com.cs.entity.User;
import com.cs.service.PowerService;
import com.cs.service.UserService;

@Controller
public class PowerController {
	@Autowired
	private PowerService service;
	@Autowired
	private UserService userservice;
	
	//显示菜单
	@RequestMapping("powerList")
	public String powerList(ModelMap map) {
		String name=(String) SecurityUtils.getSubject().getPrincipal();
		User user=new User();
		user=userservice.login(name);
		map.addAttribute("list",service.powerList(user.getId()));
		return "Index";
	}
}
