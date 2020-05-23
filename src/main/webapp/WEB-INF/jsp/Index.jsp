<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<script type="text/javascript" src="static/js/admin.js"></script>
	<script type="text/javascript" src="static/js/jquery-1.12.4.js"></script>
    <title>My JSP 'Index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<body>
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">59房屋出租系统</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    
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
          <a class="" >管理后台</a>
           <dl class="layui-nav-child">
             <dd><a href="adminList">经销商管理</a></dd>
             <dd><a href="adminHouseList">房屋信息管理</a></dd>
             <dd><a >添加经销商</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="adminHouseList2">审核房屋发布</a>
          
        </li>
        
      </ul>
    </div>
  </div>
  <div class="layui-body">
  	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
  <legend>经销商信息</legend>
</fieldset>
    <!-- 内容主体区域 -->
    	 <table class="layui-table" lay-even="" lay-skin="row">
    <thead>
    <tr>
      <th>经销商名称</th>
      <th>登录名称</th>
      <th>账号状态</th>
      <th>当前投诉值</th>
      <th>操作</th>
    </tr> 
  </thead>
  <tbody>
    <c:forEach items="${list}" var="list">
    <tr>
      <th>${list.userName}</th>
      <th>${list.userLoginName}</th>
      <th>${list.userType}</th>
      <th>${list.userNumber}</th>
      <th><a class="layui-btn layui-btn-primary layui-btn-sm" onclick="javascript:Update(${list.id})">封号</a></th>
    </tr>
    </c:forEach>
  </tbody>
</table>
  </div>
 
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    我也是有底线的
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
