<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
  	<link rel="stylesheet" type="text/css" href="static/css/test.css" />
	<script type="text/javascript" src="static/layui/layui.js"></script>
	<script type="text/javascript" src="static/js/user.js"></script>
	<script type="text/javascript" src="static/js/jquery-1.12.4.js"></script>
    <title>二手房</title>
    
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
      <div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">59房屋出租系统</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
    <li class="layui-nav-item"><a href="houseList">全部</a></li>
      <li class="layui-nav-item"><a href="houseList2">新房</a></li>
      <li class="layui-nav-item"><a href="houseList3">二手房</a></li>
      <li class="layui-nav-item"><a href="houseList4">商铺</a></li>
      <li class="layui-nav-item"><a href="houseList5">写字楼</a></li>
      <li class="layui-nav-item"><a href="houseList6">厂房</a></li>
      <li class="layui-nav-item"><a href="houseList7">仓库</a></li>
      <li class="layui-nav-item">
        <a href="javascript:;"></a>
      </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
          ${sessionScope.username}
        </a>

      </li>
      <li class="layui-nav-item"><a href="tui">退出</a></li>
    </ul>
  </div>
  <div>
  	<c:forEach items="${list}" var="list">
  <div class=".list-wrap">
    	<div class="list-box">
    		<ul class="house-list">
    			<li class="house-cell">
    				<div class="img-list">
    					<a>
    						<img alt="图片没啦" src="static/img/${list.housePhoto}">
    					</a>
    				</div>
    				<div class="des">
    					<h2>
    						<a href="" class="strongbox">${list.houseName}</a>
    					</h2>
    					<p class="room">${list.houseCourtroom}&nbsp;&nbsp;&nbsp;${list.houseVolume}</p>
    					<p class="infor">${list.houseAddress}</p>
    					<div class="jjr">
    						<span class="jjr_par">来自商人:${list.userHouse.userName}</span>
    					</div>
    				</div>
    			</li>
    		</ul>
    	</div>
    </div>
  </c:forEach>
  </div>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
  </body>
</html>
