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
	
    <title>My JSP 'Member.jsp' starting page</title>
    
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
  <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
</fieldset>
  </div>

<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
layui.use(['laypage', 'layer'], function(){
  var laypage = layui.laypage
  ,layer = layui.layer;
  
  //总页数低于页码总数
  laypage.render({
    elem: 'demo0'
    ,count: 50 //数据总数
  });
  
  //总页数大于页码总数
  laypage.render({
    elem: 'demo1'
    ,count: 70 //数据总数
    ,jump: function(obj){
      console.log(obj)
    }
  });
  
  //自定义样式
  laypage.render({
    elem: 'demo2'
    ,count: 100
    ,theme: '#1E9FFF'
  });
  laypage.render({
    elem: 'demo2-1'
    ,count: 100
    ,theme: '#FF5722'
  });
  laypage.render({
    elem: 'demo2-2'
    ,count: 100
    ,theme: '#FFB800'
  });
  
  //自定义首页、尾页、上一页、下一页文本
  laypage.render({
    elem: 'demo3'
    ,count: 100
    ,first: '首页'
    ,last: '尾页'
    ,prev: '<em>←</em>'
    ,next: '<em>→</em>'
  });
  
  //不显示首页尾页
  laypage.render({
    elem: 'demo4'
    ,count: 100
    ,first: false
    ,last: false
  });
  
  //开启HASH
  laypage.render({
    elem: 'demo5'
    ,count: 500
    ,curr: location.hash.replace('#!fenye=', '') //获取hash值为fenye的当前页
    ,hash: 'fenye' //自定义hash值
  });
  
  //只显示上一页、下一页
  laypage.render({
    elem: 'demo6'
    ,count: 50
    ,layout: ['prev', 'next']
    ,jump: function(obj, first){
      if(!first){
        layer.msg('第 '+ obj.curr +' 页');
      }
    }
  });
  
  //完整功能
  laypage.render({
    elem: 'demo7'
    ,count: 100
    ,layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']
    ,jump: function(obj){
      console.log(obj)
    }
  });
  
  //自定义排版
  laypage.render({
    elem: 'demo8'
    ,count: 1000
    ,layout: ['limit', 'prev', 'page', 'next']
  });
  laypage.render({
    elem: 'demo9'
    ,count: 1000
    ,layout: ['prev', 'next', 'page']
  });
  laypage.render({
    elem: 'demo10'
    ,count: 1000
    ,layout: ['page', 'count']
  });
  
  //自定义每页条数的选择项
  laypage.render({
    elem: 'demo11'
    ,count: 1000
    ,limit: 100
    ,limits: [100, 300, 500]
  });
  
  
  //将一段数组分页展示
  
  //测试数据
  var data = [
    '北京',
    '上海',
    '广州',
    '深圳',
    '杭州',
    '长沙',
    '合肥',
    '宁夏',
    '成都',
    '西安',
    '南昌',
    '上饶',
    '沈阳',
    '济南',
    '厦门',
    '福州',
    '九江',
    '宜春',
    '赣州',
    '宁波',
    '绍兴',
    '无锡',
    '苏州',
    '徐州',
    '东莞',
    '佛山',
    '中山',
    '成都',
    '武汉',
    '青岛',
    '天津',
    '重庆',
    '南京',
    '九江',
    '香港',
    '澳门',
    '台北'
  ];
  
  //调用分页
  laypage.render({
    elem: 'demo20'
    ,count: data.length
    ,jump: function(obj){
      //模拟渲染
      document.getElementById('biuuu_city_list').innerHTML = function(){
        var arr = []
        ,thisData = data.concat().splice(obj.curr*obj.limit - obj.limit, obj.limit);
        layui.each(thisData, function(index, item){
          arr.push('<li>'+ item +'</li>');
        });
        return arr.join('');
      }();
    }
  });
  
});
</script>
  </body>
</html>
