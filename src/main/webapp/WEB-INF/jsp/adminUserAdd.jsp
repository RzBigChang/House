<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
  	<link rel="stylesheet" type="text/css" href="static/layui/css/layui.css" />
	<script type="text/javascript" src="static/layui/layui.js"></script>
	<script type="text/javascript" src="static/js/user.js"></script>
	<script type="text/javascript" src="static/js/jquery-1.12.4.js"></script>
	<link rel="stylesheet" href="static/css/normalize.css">
  	<link rel="stylesheet" href="static/css/style.css">
    <base href="<%=basePath%>">
    
    <title>注册</title>
    
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
    <p>添加经销商</p>
    <ul class="reg_ul">
      <li>
          <span>用户名：</span>
          <input type="text" name="userName" id="userName" value="" placeholder="用户名" class="reg_user">
          <span class="tip user_hint"></span>
      </li>
      <li>
          <span>登录名：</span>
          <input type="text" name="userLoginName" id="userLoginName" value="" placeholder="登录名" class="reg_user" onchange="userloginname()">
          <span id="loginname"></span>
      </li>
      <li>
          <span>密码：</span>
          <input type="password" name="userPassword" id="userPassword" value="" placeholder="确认密码" class="reg_password">
          <span class="tip confirm_hint"></span>
      </li>
      <li>
        <button type="button" name="button" class="red_button" onclick="adminAdd()">注册</button>
      </li>
    </ul>
  </div>
</div>
</form>
</body>
</html>