package com.cs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.cs.entity.House;
import com.cs.entity.User;
import com.cs.entity.UserAndRole;
import com.cs.service.AdminService;
import com.cs.service.UserService;

@Controller
public class AdminController {
	@Autowired
	private AdminService service;
	@Autowired
	private UserService userservice;
	@Resource
	private  RedisTemplate redisTemplate;
	private RandomNumberGenerator randomNumberGenerator=new SecureRandomNumberGenerator();
	//查询经销商
	@RequestMapping("adminList")
	public String adminList(ModelMap map) {
		List<User>list=new ArrayList<User>();
		if(list.size()>0) {
			list=redisTemplate.opsForList().range("User", 0, -1);
		}else {
			list=service.userList();
		}
		map.addAttribute("list",list);
		return "Index";
	}
	//查询房源
	@RequestMapping("adminHouseList")
	public String houseList(ModelMap map) {
		List<House>list=new ArrayList<House>();
		if(list.size()>0) {
			list=redisTemplate.opsForList().range("House2", 0, -1);
		}else {
			list=service.houseList();
		}
		map.addAttribute("list",list);
		return "adminHouseList";
	}
	//封号
	@RequestMapping("userUpdate")
	public void userUpdate(int id,HttpServletResponse resp) throws IOException {
		int result=service.userUpdate(id);
		if(result==1) {
			print(result, resp);
		}else {
			print(result, resp);
		}
	}
	//删除房源信息
	@RequestMapping("andinHouseDelete")
	public void adminHouseDelete(int id,HttpServletResponse resp) throws IOException {
		int result=service.houseDelete(id);
		if(result==1) {
			//删除外键表信息 id为houseId
			service.userAndHouseDelete(id);
			print(result, resp);
		}else {
			print(result, resp);
		}
	}
	//查询未审核的房源
	@RequestMapping("adminHouseList2")
	public String adminHouseList2(ModelMap map) {
		List<House>list=new ArrayList<House>();
		list=service.houseList2();
		map.addAttribute("list",list);
		return "adminHouseList2";
	}
	//修改审核状态
	@RequestMapping("adminHouseUpdateExamine")
	public void adminHouseUpdateExamine(int id,HttpServletResponse resp) throws IOException {
		int result=service.houseUpdate(id);
		if(result==1) {
			print(result, resp);
		}else {
			print(result, resp);
		}
	}
	//添加经销商
	@RequestMapping(value="adminUserAdd")
	public void adminUserAdd(User user,HttpServletResponse resp) throws IOException {
		String salt=randomNumberGenerator.nextBytes().toHex();
		String newpassowrd=new SimpleHash("md5", user.getUserPassword(), ByteSource.Util.bytes(user.getUserLoginName()+salt),2).toHex();
		user.setUserPassword(newpassowrd);
		user.setUserSalt(salt);
		user.setUserType(1);
		user.setUserNumber(0);
		int result=service.adminUserAdd(user);
		
		UserAndRole userAndRole=new UserAndRole();
		userAndRole.setUserId(user.getId());
		userAndRole.setRoleId(2);
		if(result==1) {
			userservice.userandroleAdd(userAndRole);
			print(result, resp);
		}else {
			print(result, resp);
		}
	}
	//跳转到经销商添加
	@RequestMapping("/adminUserAdds")
	public String adminUserAdds() {
		return "adminUserAdd";
	}
	//转json字符串方法
	public void print(Object par,HttpServletResponse resp) throws IOException {
		String json=JSON.toJSONString(par);
		PrintWriter out=resp.getWriter();
		out.print(json);
	}}
