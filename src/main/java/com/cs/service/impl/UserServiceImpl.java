package com.cs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.cs.entity.User;
import com.cs.entity.UserAndRole;
import com.cs.mapper.UserMapper;
import com.cs.service.UserService;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper mapper;
	//注册
	@Override
	public int AddUser(User user) {
		int result=mapper.AddUser(user);
		return result;
	}
	//登录
	@Override
	public User login(String userLoginName) {
		User user=mapper.login(userLoginName);
		return user;
	}
	//查询用户名
	@Override
	public User userLoginName(String userLoginName) {
		User user=mapper.userLoginName(userLoginName);
		return user;
	}
	//添加外键数据
	@Override
	public int userandroleAdd(UserAndRole userAndRole) {
		int result=mapper.userandroleAdd(userAndRole);
		return result;
	}

}
