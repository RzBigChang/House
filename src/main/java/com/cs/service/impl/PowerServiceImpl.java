package com.cs.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cs.entity.Power;
import com.cs.entity.Role;
import com.cs.entity.UserAndRole;
import com.cs.mapper.PowerMapper;
import com.cs.service.PowerService;
@Service
public class PowerServiceImpl implements PowerService {
	@Autowired
	private PowerMapper mapper;
	//显示菜单
	@Override
	public List<Power> powerList(int id) {
		List<Power>list=new ArrayList<Power>();
		list=mapper.powerList(id);
		return list;
	}
	//查询角色
	@Override
	public List<UserAndRole> powerListRole(int id) {
		List<UserAndRole>list=new ArrayList<UserAndRole>();
		list=mapper.powerListRole(id);
		return list;
	}
	//商家
	@Override
	public List<UserAndRole> powerListRoleBusiness(int id) {
		List<UserAndRole>list=new ArrayList<UserAndRole>();
		list=mapper.powerListRoleBusiness(id);
		return list;
	}
	//会员
	@Override
	public List<UserAndRole> powerListRolemember(int id) {
		List<UserAndRole>list=new ArrayList<UserAndRole>();
		list=mapper.powerListRolemember(id);
		return list;
	}

}
