package com.cs.mapper;

import java.util.List;

import com.cs.entity.House;
import com.cs.entity.UserAndHouse;

public interface HouseMapper {
	public int houseAdd(House house);//添加房屋信息
	public int userAndhouseAdd(UserAndHouse userandhouse);//删除外键表信息
	public List<House>houseList();//查询房屋
	public List<House>houseList2();//头部导航新房
	public List<House>houseList3();//头部导航二手房
	public List<House>houseList4();//商铺
	public List<House>houseList5();//写字楼
	public List<House>houseList6();//厂房
	public List<House>houseList7();//仓库
}
