//添加房屋
function houseAdd(){
	var houseName=$("#houseName").val();
	var houseAddress=$("#houseAddress").val();
	var houseVolume=$("#houseVolume").val();
	var houseCourtroom=$("#houseCourtroom").val();
	var houseRent=$("#houseRent").val();
	var houseFloor=$("#houseFloor").val();
	var housePhoto=$("#housePhoto").val();
	
	var fileName = getFileName(housePhoto);
	function getFileName(o){
		var pos = o.lastIndexOf("\\");
		return o.substring(pos+1);
	}
	var houseType=$("#houseType").val();
	var houseRentOrSell=$("#houseRentOrSell").val();
	var houseAdvantage=$("#houseAdvantage").val();
	
	if(houseName==""||houseName==null){
		alert("房屋标题不能为空");
		return false;
	}
	if(houseAddress==""||houseAddress==null){
		alert("房屋地址不能为空");
		return false;
	}
	if(houseVolume==""||houseVolume==null){
		alert("房屋面积不能为空");
		return false;
	}
	if(houseCourtroom==""||houseCourtroom==null){
		alert("房屋庭室");
		return false;
	}
	if(houseRent==""||houseRent==null){
		alert("房屋租金");
		return false;
	}
	if(houseFloor==""||houseFloor==null){
		alert("房屋楼层");
		return false;
	}
	if(housePhoto==""||housePhoto==null){
		alert("房屋照片展示不能为空");
		return false;
	}
	if(fileName==""||fileName==null){
		alert("房屋照片不能为空");
		return false;
	}
	if(houseType==""||houseType==null){
		alert("房屋类型不能为空");
		return false;
	}
	if(houseAdvantage==""||houseAdvantage==null){
		alert("房屋优点不能为空");
		return false;
	}
	if(houseRentOrSell==""||houseRentOrSell==null){
		alert("请选择租OR卖");
		return false;
	}
	$.ajax({
		url:"houseAdd",
		type:"post",
		data:{
			houseName:houseName,
			houseAddress:houseAddress,
			houseVolume:houseVolume,
			houseCourtroom:houseCourtroom,
			houseRent:houseRent,
			houseFloor:houseFloor,
			housePhoto:fileName,
			houseType:houseType,
			houseRentOrSell:houseRentOrSell,
			houseAdvantage:houseAdvantage
		},
		success:function(json){
			if(json>0){
				alert("添加成功");
				location.href="businessList"
			}else{
				alert("添加失败");
				location.href="businessList"
			}
		}
	})
}
//修改
function Update(){
	var id=$("#id").val();
	var houseName=$("#houseName").val();
	var houseAddress=$("#houseAddress").val();
	var houseVolume=$("#houseVolume").val();
	var houseCourtroom=$("#houseCourtroom").val();
	var houseRent=$("#houseRent").val();
	var houseFloor=$("#houseFloor").val();
	var housePhoto=$("#housePhoto").val();
	var houseType=$("#houseType").val();
	var houseRentOrSell=$("#houseRentOrSell").val();
	var houseAdvantage=$("#houseAdvantage").val();
	
	if(houseName==""||houseName==null){
		alert("房屋标题不能为空");
		return false;
	}
	if(houseAddress==""||houseAddress==null){
		alert("房屋地址不能为空");
		return false;
	}
	if(houseVolume==""||houseVolume==null){
		alert("房屋面积不能为空");
		return false;
	}
	if(houseCourtroom==""||houseCourtroom==null){
		alert("房屋庭室");
		return false;
	}
	if(houseRent==""||houseRent==null){
		alert("房屋租金");
		return false;
	}
	if(houseFloor==""||houseFloor==null){
		alert("房屋楼层");
		return false;
	}
	if(housePhoto==""||housePhoto==null){
		alert("房屋照片展示不能为空");
		return false;
	}
	if(houseType==""||houseType==null){
		alert("房屋类型不能为空");
		return false;
	}
	if(houseAdvantage==""||houseAdvantage==null){
		alert("房屋优点不能为空");
		return false;
	}
	if(houseRentOrSell==""||houseRentOrSell==null){
		alert("请选择租OR卖");
		return false;
	}
	$.ajax({
		url:"businessUpdate",
		type:"POST",
		dataType:"json",
		contentType: "application/json;charset=UTF-8",
		data:JSON.stringify({
			houseName:houseName,
			houseAddress:houseAddress,
			houseVolume:houseVolume,
			houseCourtroom:houseCourtroom,
			houseRent:houseRent,
			houseFloor:houseFloor,
			houseType:houseType,
			houseRentOrSell:houseRentOrSell,
			houseAdvantage:houseAdvantage,
			id:id
		}),
		success:function(json){
			if(json>0){
				alert("修改成功");
				location.href="businessList"
			}else{
				alert("修改失败");
				location.href="businessList"
			}
		}
	})
}