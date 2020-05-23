package com.cs.service;

import java.util.List;

import com.cs.entity.Power;
import com.cs.entity.Role;
import com.cs.entity.UserAndRole;

public interface PowerService {
	public List<Power>powerList(int id);//显示菜单
	public List<UserAndRole>powerListRole(int id);//管理员
	public List<UserAndRole>powerListRoleBusiness(int id);//商家
	public List<UserAndRole>powerListRolemember(int id);//会员
}
