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
	<script type="text/javascript" src="static/layui/layui.js"></script>
	<script type="text/javascript" src="static/js/user.js"></script>
	<script type="text/javascript" src="static/js/jquery-1.12.4.js"></script>
    <title>My JSP 'Business.jsp' starting page</title>
    
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
    <div class="layui-logo">北大青鸟房屋出租系统</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      
      <li class="layui-nav-item">
        <a href="javascript:;"></a>
      </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
          张健
        </a>

      </li>
      <li class="layui-nav-item"><a href="tui">退出</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="">我的信息</a>
         	<dl class="layui-nav-child">
         	<dd><a href="businessList">全部房屋信息</a></dd>
            <dd><a href="houseADD">添加房屋信息</a></dd>
            <dd><a href="businessList2">未审核的信息</a></dd>
            <dd><a href="businessList3">热度排行</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="">推广</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
  	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
  <legend>未审核的信息</legend>
</fieldset>  
 
<table class="layui-table" lay-even="" lay-skin="row">
  <colgroup>
    <col width="150">
    <col width="150">
    <col width="200">
    <col>
  </colgroup>
  <thead>
    <tr>
      <th>房屋标题</th>
      <th>房屋面积</th>
      <th>房屋庭室</th>
      <th>房屋地址</th>
      <th>房屋价格</th>
      <th>房屋楼层</th>
      <th>房屋热度</th>
      <th>房屋类型</th>
      <th>房屋优点</th>
    </tr> 
  </thead>
  <tbody>
    <c:forEach items="${list}" var="list">
    <tr>
      <th>${list.houseName}</th>
      <th>${list.houseVolume}</th>
      <th>${list.houseCourtroom}</th>
      <th>${list.houseAddress}</th>
      <th>${list.houseRent}</th>
      <th>${list.houseFloor}</th>
      <th>${list.houseHeat}</th>
      <th>${list.houseType}</th>
      <th>${list.houseAdvantage}</th>
    </tr>
    </c:forEach>
  </tbody>
</table>
  </div>
  
</div>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
  </body>
</html>
