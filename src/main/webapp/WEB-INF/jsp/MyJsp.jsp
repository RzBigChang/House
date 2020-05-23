<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>404-错误</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>  
        body{font-size: 14px;font-family: 'helvetica neue',tahoma,arial,'hiragino sans gb','microsoft yahei','Simsun',sans-serif; background-color:#fff; color:#808080;}  
        .wrap{margin:200px auto;width:510px;}  
        td{text-align:left; padding:2px 10px;}  
        td.header{font-size:22px; padding-bottom:10px; color:#000;}  
        td.check-info{padding-top:20px;}  
        a{color:#328ce5; text-decoration:none;}  
        a:hover{text-decoration:underline;}  
    </style> 
  </head>
  
  <body> 
    <div class="wrap">  
        <table>  
            <tr>  
                <td rowspan="5" style=""></td>  
                <td class="header">很抱歉！出现问题啦!您的账号账号密码错误,请联系管理员。</td>  
            </tr>  
            <tr><td>原因一:程序猿搞砸了这个项目!!!</td></tr>  
            <tr><td>原因二:这个账号被管理员删了或封禁了。</td></tr>  
            <tr><td>如果刷新页面没能解决问题，你可以前往<a href="https://baidu.com">找解决办法</a>反馈</td></tr>  
            <tr><td class="check-info">或者，你也可以<a href="https://github.com/RzBigChang">先去我的GitHub逛逛</a></td></tr>  
        </table>  
    </div>  
  </body>
</html>
