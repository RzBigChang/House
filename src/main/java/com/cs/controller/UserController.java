package com.cs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.cs.entity.User;
import com.cs.entity.UserAndRole;
import com.cs.service.PowerService;
import com.cs.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService service;
	@Autowired
	private PowerService powerservice;
	private RandomNumberGenerator randomNumberGenerator=new SecureRandomNumberGenerator();
	
	//跳转注册页面
	@RequestMapping("userADD")
	public String ADD() {
		return "UserAdd";
	}
	//注册方法
	@RequestMapping(value="userAdd",method=RequestMethod.POST)
	public void UserAdd(@RequestBody User user,HttpServletResponse resp) throws IOException {
		String salt=randomNumberGenerator.nextBytes().toHex();
		String newpassowrd=new SimpleHash("md5", user.getUserPassword(), ByteSource.Util.bytes(user.getUserLoginName()+salt),2).toHex();
		user.setUserPassword(newpassowrd);
		user.setUserSalt(salt);
		user.setUserType(1);
		user.setUserNumber(0);
		int result=service.AddUser(user);
		UserAndRole userAndRole=new UserAndRole();
		userAndRole.setUserId(user.getId());
		userAndRole.setRoleId(1);
		if(result==1) {
			service.userandroleAdd(userAndRole);
			print(result,resp);
		}else {
			print(result,resp);
		}
	}
	
	//登录页面跳转方法
	@RequestMapping("/logins")
	public String logins() {
		return "login";
	}
	//登录方法
	@RequestMapping(value="login")
	public String login(User user,Map<String,Object>map,HttpServletRequest request,HttpServletResponse resp,HttpSession session) {
		Subject subject=SecurityUtils.getSubject();
		UsernamePasswordToken usernamePasswordToken=new UsernamePasswordToken
		(user.getUserLoginName(), user.getUserPassword());
		try {
			subject.login(usernamePasswordToken);
			session.setAttribute("username", user.getUserName());
			String name=(String) SecurityUtils.getSubject().getPrincipal();
			User user2=new User();
			user2=service.login(name);
			List<UserAndRole>list=new ArrayList<UserAndRole>();
			List<UserAndRole>list2=new ArrayList<UserAndRole>();
			List<UserAndRole>list3=new ArrayList<UserAndRole>();
			//管理员页面
			list=powerservice.powerListRole(user2.getId());
			//商家页面
			list2=powerservice.powerListRoleBusiness(user2.getId());
			//会员页面
			list3=powerservice.powerListRolemember(user2.getId());
			if(list.size()>0) {
				return "redirect:adminList";
			}else if(list2.size()>0) {
				return "redirect:businessList";
			}else if(list3.size()>0) {
				return "redirect:houseList";
			}
		} catch (AuthenticationException e) {
			e.printStackTrace();
			return "MyJsp";
		}catch (AuthorizationException e) {
			e.printStackTrace();
			return "MyJsp";
		}
		return "MyJsp";
	}
	//验证用户名是否重复
	@RequestMapping("yanName")
	public void userLoginName(String userLoginName,HttpServletResponse resp) throws IOException {
		User user=service.userLoginName(userLoginName);
		System.out.println("user对象为:"+user);
		System.out.println("user对象为:"+user);
		System.out.println("user对象为:"+user);
		System.out.println("user对象为:"+user);
		System.out.println("user对象为:"+user);
		System.out.println("user对象为:"+user);
		System.out.println("user对象为:"+user);
		System.out.println("user对象为:"+user);
		System.out.println("user对象为:"+user);
		if(null==user) {
			print("未重复", resp);
		}else {
			print("重复", resp);
		}
	}
	//管理员的页面跳转
	@RequestMapping("index")
	public String index() {
		return "Index";
	}
	//商家的页面
	@RequestMapping("business")
	public String business() {
		return "Business";
	}
	//退出
	@RequestMapping("tui")
	public String tui() {
		Subject subject=SecurityUtils.getSubject();
		subject.logout();
		return "login";
	}
	
	
	
	
	//转json字符串方法
	public void print(Object par,HttpServletResponse resp) throws IOException {
		String json=JSON.toJSONString(par);
		PrintWriter out=resp.getWriter();
		out.print(json);
	}
		
		
		
}
