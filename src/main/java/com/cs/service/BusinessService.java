package com.cs.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cs.entity.House;
import com.cs.entity.UserAndHouse;

public interface BusinessService {
	public List<House>businessList(@Param("id")int id);//我的信息
	public House house2(int id);//回显数据
	public int Update(House house);//修改房屋信息
	List<House>businessList2(int id);//查询未审核的信息
	List<House>businessList3(int id);//根据热度排行
}
