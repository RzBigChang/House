package com.cs.service;

import org.springframework.web.bind.annotation.RequestParam;

import com.cs.entity.User;
import com.cs.entity.UserAndRole;

public interface UserService {
	public int AddUser(User user);//注册
	public User login(String userLoginName);//登录
	public User userLoginName(String userLoginName);//根据用户名查询用户
	public int userandroleAdd(UserAndRole userAndRole);//添加外键表数据
}
