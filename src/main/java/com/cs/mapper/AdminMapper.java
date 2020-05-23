package com.cs.mapper;

import java.util.List;

import com.cs.entity.House;
import com.cs.entity.User;

public interface AdminMapper {
	public List<User>userList();//查询所有的商家
	public int userUpdate(int id);//封号
	public List<House>houseList();//查看所有房源
	public int houseDelete(int id);//删除房屋信息
	public List<House>houseList2();//查询未审核的房源
	public int houseUpdate(int id);//修改房源审核状态
	public int userAndHouseDelete(int houseId);//删除外键表信息
	public int adminUserAdd(User user);//添加经销商
}
