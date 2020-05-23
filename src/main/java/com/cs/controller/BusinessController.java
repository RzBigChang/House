package com.cs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSON;
import com.cs.entity.House;
import com.cs.entity.User;
import com.cs.entity.UserAndHouse;
import com.cs.service.BusinessService;
import com.cs.service.UserService;

@Controller
public class BusinessController {
	@Autowired
	private BusinessService service;
	@Autowired
	private UserService userservice;
	//我的信息
	@RequestMapping("businessList")
	public String businessList(ModelMap map) {
		List<House>list=new ArrayList<House>();
		String name=(String) SecurityUtils.getSubject().getPrincipal();
		User user=new User();
		user=userservice.login(name);
		list=service.businessList(user.getId());
		map.addAttribute("list",list);
		return "Business";
	}
	//查询审核的的房源
	@RequestMapping("businessList2")
	public String businessList2(ModelMap map) {
		List<House>list=new ArrayList<House>();
		String name=(String) SecurityUtils.getSubject().getPrincipal();
		User user=new User();
		user=userservice.login(name);
		list=service.businessList2(user.getId());
		map.addAttribute("list",list);
		return "BusinessList2";
	}
	//热度
	@RequestMapping("businessList3")
	public String businessList3(ModelMap map) {
		List<House>list=new ArrayList<House>();
		String name=(String) SecurityUtils.getSubject().getPrincipal();
		User user=new User();
		user=userservice.login(name);
		list=service.businessList3(user.getId());
		map.addAttribute("list",list);
		return "BusinessList3";
	}
	//回显数据
	@RequestMapping("business4")
	public String business4(int id,ModelMap map) {
		House house=service.house2(id);
		map.addAttribute("house",house);
		return "BusinessUpdate";
	}
	//修改房源信息
	@RequestMapping(value="businessUpdate",method=RequestMethod.POST)
	public void businessUpdate(@RequestBody House house,HttpServletResponse resp) throws IOException {
		int result=service.Update(house);
		if(result==1) {
			print(result, resp);
		}else {
			print(result, resp);
		}
	}
	
	
	
	//转json字符串方法
		public void print(Object par,HttpServletResponse resp) throws IOException {
			String json=JSON.toJSONString(par);
			PrintWriter out=resp.getWriter();
			out.print(json);
		}
}
