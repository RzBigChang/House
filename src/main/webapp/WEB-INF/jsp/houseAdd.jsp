<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
     <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
  	<link rel="stylesheet" type="text/css" href="static/layui/css/layui.css" />
	<script type="text/javascript" src="static/layui/layui.js"></script>
	<script type="text/javascript" src="static/js/user.js"></script>
	<script type="text/javascript" src="static/js/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="static/js/house.js"></script>
		<link rel="stylesheet" href="static/css/normalize.css">
  	<link rel="stylesheet" href="static/css/style.css">
    <title>增加房源</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <body>
  <form class="form-horizontal">
      <div class="reg_div">
    <p>添加房屋信息</p>
    <ul class="reg_ul">
      <li>
          <span>房屋标题：</span>
          <input type="text" name="houseName" id="houseName" value="" placeholder="" class="reg_user">
          <span class="tip user_hint"></span>
      </li>
      <li>
          <span>房屋面积：</span>
          <input type="text" name="houseVolume" id="houseVolume" value="" placeholder="" class="reg_user">
          <span class="tip user_hint"></span>
      </li>
      <li>
          <span>房屋庭室：</span>
          <input type="text" name="houseCourtroom" id="houseCourtroom" value="" placeholder="" class="reg_user">
          <span class="tip password_hint"></span>
      </li>
      <li>
          <span>房屋地址：</span>
          <input type="text" name="houseAddress" id="houseAddress" value="" placeholder="" class="reg_user">
          <span class="tip password_hint"></span>
      </li>
      <li>
          <span>房屋租金：</span>
          <input type="text" name="houseRent" id="houseRent" value="" placeholder="" class="reg_user">
          <span class="tip password_hint"></span>
      </li>
      <li>
          <span>房屋楼层：</span>
          <input type="text" name="houseFloor" id="houseFloor" value="" placeholder="" class="reg_user">
          <span class="tip password_hint"></span>
      </li>
      <li>
          <span>房屋照片：</span>
          <input type="file" name="housePhoto" id="housePhoto" value="" placeholder="" class="reg_user">
          <span class="tip password_hint"></span>
      </li>
      <li>
            <span>资产类型：</span>
            <div class="col-xs-4">
               <select id="houseType" name="houseType">
               	<option value="0">住房</option>
        		<option value="1" selected="">商铺</option>
        		<option value="2">写字楼</option>
        		<option value="3">厂房</option>
        		<option value="4">仓库</option>
        		<option value="5">新房</option>
        		<option value="6">二手房</option>
               </select>
      </li>
      <li>
            <span>租OR/卖：</span>
            <div class="col-xs-4">
               <select id="houseRentOrSell" name="houseRentOrSell">
               	<option value="0">卖</option>
        		<option value="1">租</option>
               </select>
      </li>
      <li>
          <span>房屋优点：</span>
          <input type="text" name="houseAdvantage" id="houseAdvantage" value="" placeholder="" class="reg_user">
          <span class="tip confirm_hint"></span>
      </li>
      <li>
        <button type="button" name="button" class="red_button" onclick="houseAdd()">发布房源</button>
      </li>
    </ul>
  </div>
</div>
</form>
</body>
  </body>
</html>
