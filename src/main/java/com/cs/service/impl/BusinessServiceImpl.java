package com.cs.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cs.entity.House;
import com.cs.entity.UserAndHouse;
import com.cs.mapper.BusinessMapper;
import com.cs.service.BusinessService;
@Service
public class BusinessServiceImpl implements BusinessService {
	@Autowired
	private BusinessMapper mapper;
	//我的信息
	@Override
	public List<House> businessList(int id) {
		List<House>list=new ArrayList<House>();
		list=mapper.businessList(id);
		return list;
	}
	//回显数据
	@Override
	public House house2(int id) {
		House house=mapper.house2(id);
		return house;
	}
	//修改房屋信息
	@Override
	public int Update(House house) {
		int result=mapper.Update(house);
		return result;
	}
	
	//查询未审核的房源信息
	@Override
	public List<House> businessList2(int id) {
		List<House>list=new ArrayList<House>();
		list=mapper.businessList2(id);
		return list;
	}
	//热度
	@Override
	public List<House> businessList3(int id) {
		List<House>list=new ArrayList<House>();
		list=mapper.businessList3(id);
		return list;
	}

}
