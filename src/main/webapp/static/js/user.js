//添加
function Add(){
	var userName=$("#userName").val();
	var userLoginName=$("#userLoginName").val();
	var userPassword=$("#userPassword").val();
	if(userName==""||userName==null){
		alert("用户名不能为空");
		return false;
	}
	if(userLoginName==""||userLoginName==null){
		alert("登录名不能为空");
		return false;
	}
	if(userPassword==""||userPassword==null){
		alert("密码不能为空");
		return false;
	}
	$.ajax({
		url:"userAdd",
		type:"POST",
		dataType:"json",
		contentType:'application/json;charset=UTF-8',
		data:JSON.stringify({
			userName:userName,
			userLoginName:userLoginName,
			userPassword:userPassword
		}),
		success:function(json){
			if(json>0){
				alert("注册成功");
				location.href="logins"
			}else{
				alert("注册失败");
				location.href="logins";
			}
		}
	})
}

//添加经销商
function adminAdd(){
	var userName=$("#userName").val();
	var userLoginName=$("#userLoginName").val();
	var userPassword=$("#userPassword").val();
	if(userName==""||userName==null){
		alert("用户名不能为空");
		return false;
	}
	if(userLoginName==""||userLoginName==null){
		alert("登录名不能为空");
		return false;
	}
	if(userPassword==""||userPassword==null){
		alert("密码不能为空");
		return false;
	}
	$.ajax({
		url:"adminUserAdd",
		type:"POST",
		dataType:"json",
		contentType:'application/json;charset=UTF-8',
		data:JSON.stringify({
			userName:userName,
			userLoginName:userLoginName,
			userPassword:userPassword
		}),
		success:function(json){
			if(json>0){
				alert("注册成功");
				location.href="logins"
			}else{
				alert("注册失败");
				location.href="logins";
			}
		}
	})
}

//验证登录名不能重复
function userloginname(){
	var userLoginName=$("#userLoginName").val();
	$.ajax({
		url:"yanName",
		type:"POST",
		async:false,
		data:{
			userLoginNames:userLoginName
		},
		success:function(json){
			if(json=='重复'){
				document.getElementById("loginname").innerHTML = "<font color='red'>用户名重复</font>";
			}else{
				document.getElementById("loginname").innerHTML = "<font color='green'>用户名可用</font>";
			}
		}
	})
}
