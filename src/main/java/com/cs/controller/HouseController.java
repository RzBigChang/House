package com.cs.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadBase;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;

import com.alibaba.fastjson.JSON;
import com.cs.entity.House;
import com.cs.entity.User;
import com.cs.entity.UserAndHouse;
import com.cs.service.HouseService;
import com.cs.service.UserService;

@Controller
public class HouseController {
	@Autowired
	private UserService userservice;
	@Resource
	private RedisTemplate redisTemplate;
	@Autowired
	private HouseService service;
	private RandomNumberGenerator randomNumberGenerator=new SecureRandomNumberGenerator();
	//添加房屋跳转页面
	@RequestMapping("houseADD")
	public String houseADD() {
		return "houseAdd";
	}
	//添加房屋信息
	@RequestMapping("houseAdd")
	public void houseAdd(House house,HttpServletResponse resp) throws IOException {
		String salt=randomNumberGenerator.nextBytes().toString();
		int result=service.houseAdd(house);
		house.setHouseHeat(0);
		house.setHouseExamine(1);
		if(result==1) {
			//获取当前登录人的id
			String name=(String) SecurityUtils.getSubject().getPrincipal();
			User user=new User();
			user=userservice.login(name);
			//获取当前添加的id
			UserAndHouse userAndHouse=new UserAndHouse();
			userAndHouse.setHouseId(house.getId());
			userAndHouse.setUserId(user.getId());
			//添加外键信息
			service.userAndhouseAdd(userAndHouse);
			print(result, resp);
		}else {
			print(result,resp);
		}
	}
	
	//查看房屋信息
	@RequestMapping("houseList")
	public String houseList(ModelMap map,HttpSession session) {
		session.getAttribute("username");
		System.out.println(session.getAttribute("username"));
		List<House>list=new ArrayList<House>();
		if(list.size()>0) {
			list=redisTemplate.opsForList().range("House", 0, -1);
		}else {
			list=service.houseList();
		}
		
		map.addAttribute("list",list);
		return "Member";
	}
	//新房
	@RequestMapping("houseList2")
	public String houseList2(ModelMap map) {
		List<House>list=new ArrayList<House>();
		list=service.houseList2();
		if(list.size()>0) {
			list=redisTemplate.opsForList().range("House2", 0, -1);
		}else {
			list=service.houseList2();
		}
		map.addAttribute("list", list);
		return "Member2";
	}
	//二手房
	@RequestMapping("houseList3")
	public String houseList3(ModelMap map) {
		List<House>list=new ArrayList<House>();
		if(list.size()>0) {
			list=redisTemplate.opsForList().range("House3", 0, -1);
		}else {
			list=service.houseList3();
		}
		map.addAttribute("list", list);
		return "Member3";
	}
	//商铺
	@RequestMapping("houseList4")
	public String houseList4(ModelMap map) {
		List<House>list=new ArrayList<House>();
		if(list.size()>0) {
			list=redisTemplate.opsForList().range("House4", 0, -1);
		}else {
			list=service.houseList4();
		}
		map.addAttribute("list", list);
		return "Member4";
	}
	//写字楼
	@RequestMapping("houseList5")
	public String houseList5(ModelMap map) {
		List<House>list=new ArrayList<House>();
		if(list.size()>0) {
			list=redisTemplate.opsForList().range("House5", 0, -1);
		}else {
			list=service.houseList5();
		}
		map.addAttribute("list", list);
		return "Member5";
	}
	//厂房
	@RequestMapping("houseList6")
	public String houseList6(ModelMap map) {
		List<House>list=new ArrayList<House>();
		if(list.size()>0) {
			list=redisTemplate.opsForList().range("House6", 0, -1);
		}else {
			list=service.houseList6();
		}
		map.addAttribute("list", list);
		return "Member6";
	}
	//仓库
	@RequestMapping("houseList7")
	public String houseList7(ModelMap map) {
		List<House>list=new ArrayList<House>();
		if(list.size()>0) {
			list=redisTemplate.opsForList().range("House7", 0, -1);
		}else {
			list=service.houseList7();
		}
		map.addAttribute("list", list);
		return "Member7";
	}
	public void print(Object mgs,HttpServletResponse resp) throws IOException {
		String json=JSON.toJSONString(mgs);
		PrintWriter out=resp.getWriter();
		out.print(json);
	}
}
