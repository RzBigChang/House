package com.cs.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import com.cs.entity.House;
import com.cs.entity.User;
import com.cs.mapper.AdminMapper;
import com.cs.service.AdminService;
@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminMapper mapper;
	@Resource
	private  RedisTemplate redisTemplate;
	//查询所有的商家
	@Override
	public List<User> userList() {
		List<User>list=new ArrayList<User>();
		list=mapper.userList();
		while (redisTemplate.opsForList().size("User")>0) {
			redisTemplate.opsForList().leftPop("User");
			}
		redisTemplate.opsForList().rightPushAll("User", list);
		redisTemplate.expire("User", 1, TimeUnit.DAYS);
		return list;
	}
	//封号
	@Override
	public int userUpdate(int id) {
		int result=mapper.userUpdate(id);
		redisTemplate.delete("User");
		return result;
	}
	//查看所有房源
	@Override
	public List<House> houseList() {
		List<House>list=new ArrayList<House>();
		list=mapper.houseList();
		while (redisTemplate.opsForList().size("House2")>0) {
			redisTemplate.opsForList().leftPop("House2");
			}
		redisTemplate.opsForList().rightPushAll("House2", list);
		redisTemplate.expire("House2", 1, TimeUnit.DAYS);
		return list;
	}
	//删除房屋信息
	@Override
	public int houseDelete(int id) {
		int result=mapper.houseDelete(id);
		redisTemplate.delete("House2");
		return result;
	}
	//查询未审核的房源
	@Override
	public List<House> houseList2() {
		List<House>list=new ArrayList<House>();
		list=mapper.houseList2();
		while (redisTemplate.opsForList().size("House3")>0) {
			redisTemplate.opsForList().leftPop("House3");
			}
		redisTemplate.opsForList().rightPushAll("House3", list);
		redisTemplate.expire("House3", 1, TimeUnit.DAYS);
		return list;
	}
	//修改房源审核状态
	@Override
	public int houseUpdate(int id) {
		int result=mapper.houseUpdate(id);
		redisTemplate.delete("House3");
		return result;
	}
	//删除外键表信息
	@Override
	public int userAndHouseDelete(int houseId) {
		int result=mapper.userAndHouseDelete(houseId);
		return result;
	}
	@Override
	public int adminUserAdd(User user) {
		int result=mapper.adminUserAdd(user);
		return result;
	}

}
