package com.cs.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import com.cs.entity.House;
import com.cs.entity.UserAndHouse;
import com.cs.mapper.HouseMapper;
import com.cs.service.HouseService;
@Service
public class HouseServiceImpl implements HouseService {
	@Autowired
	private HouseMapper mapper;
	@Resource
	private  RedisTemplate redisTemplate;
	//添加房屋信息
	@Override
	public int houseAdd(House house) {
		int result=mapper.houseAdd(house);
		redisTemplate.delete("House");
		redisTemplate.delete("House2");
		redisTemplate.delete("House3");
		redisTemplate.delete("House4");
		redisTemplate.delete("House5");
		redisTemplate.delete("House6");
		redisTemplate.delete("House7");
		return result;
	}
	//查询房屋
	@Override
	public List<House> houseList() {
		List<House>list=new ArrayList<House>();
		list=mapper.houseList();
		while (redisTemplate.opsForList().size("House")>0) {
			redisTemplate.opsForList().leftPop("House");
			}
		redisTemplate.opsForList().rightPushAll("House", list);
		redisTemplate.expire("House", 1, TimeUnit.DAYS);
		System.out.println(redisTemplate);
		return list;
	}
	//头部导航,新房
	@Override
	public List<House> houseList2() {
		List<House>list=new ArrayList<House>();
		list=mapper.houseList2();
		redisTemplate.opsForList().rightPushAll("House2",list);
		return list;
	}
	//二手放
	@Override
	public List<House> houseList3() {
		List<House>list=new ArrayList<House>();
		list=mapper.houseList3();
		redisTemplate.opsForList().rightPushAll("House3",list);
		return list;
	}
	//商铺
	@Override
	public List<House> houseList4() {
		List<House>list=new ArrayList<House>();
		list=mapper.houseList4();
		redisTemplate.opsForList().rightPushAll("House4",list);
		return list;
	}
	//写字楼
	@Override
	public List<House> houseList5() {
	List<House>list=new ArrayList<House>();
	list=mapper.houseList5();
	redisTemplate.opsForList().rightPushAll("House5",list);
		return list;
	}
	//厂房
	@Override
	public List<House> houseList6() {
		List<House>list=new ArrayList<House>();
		list=mapper.houseList6();
		redisTemplate.opsForList().rightPushAll("House6",list);
		return list;
	}
	//仓库
	@Override
	public List<House> houseList7() {
		List<House>list=new ArrayList<House>();
		list=mapper.houseList7();
		redisTemplate.opsForList().rightPushAll("House7",list);
		return list;
	}
	//添加外键表信息
	@Override
	public int userAndhouseAdd(UserAndHouse userandhouse) {
		int result=mapper.userAndhouseAdd(userandhouse);
		return result;
	}

}
