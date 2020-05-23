<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    	<title>登录界面</title>
    <link href="static/css/default.css" rel="stylesheet" type="text/css" />
	<!--必要样式-->
    <link href="static/css/styles.css" rel="stylesheet" type="text/css" />
    <link href="static/css/demo.css" rel="stylesheet" type="text/css" />
    <link href="static/css/loaders.css" rel="stylesheet" type="text/css" />
    <title>My JSP 'login.jsp' starting page</title>
    
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
  		<form action="login" class="form-horizontal">
    	<div class='login'>
	  <div class='login_title'>
	    <span>登录</span>
	  </div>
	  <div class='login_fields'>
	    <div class='login_fields__user'>
	      <div class='icon'>
	        <img alt="" src='img/user_icon_copy.png'>
	      </div>
	      <input name="userLoginName" placeholder='用户名' maxlength="16" type='text' autocomplete="off" value="忧郁男孩"/>
	        <div class='validation'>
	          <img alt="" src='img/tick.png'>
	        </div>
	    </div>
	    <div class='login_fields__password'>
	      <div class='icon'>
	        <img alt="" src='img/lock_icon_copy.png'>
	      </div>
	      <input type="password" name="userPassword" placeholder='密码' maxlength="16" type='text' autocomplete="off">
	      <div class='validation'>
	        <img alt="" src='img/tick.png'>
	      </div>
	    </div>
	    <div class='login_fields__submit'>
	      <input type="submit" value="登录" >
	    </div>
	  </div>
	  <div class='success'>
	  </div>
	  <div class='disclaimer'>
	    <p>欢迎登录 还没有账号？  ：<a href="userADD" target="_blank">点我注册</a></p>
	  </div>
	</div>
	</form>
</body>
</html>
