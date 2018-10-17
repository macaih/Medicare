<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="generator" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<link href="css/haiersoft.css" rel="stylesheet" type="text/css"
	media="screen,print" />
<link href="css/print.css" rel="stylesheet" type="text/css"
	media="print" />
<script src="js/jquery-1.10.1.min.js"></script>
<script src="js/side.js" type="text/javascript"></script>

<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
</head>
<style>
.index_form input {
	font-size: 20px;
	width: 100px;
	height: 40px;
	border-radius: 5px;
	font-size: 18px;
}
}
</style>
<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>

<script type="text/javascript">
		function arm_update() {		
		var day = $("#day").val();
		if(day==''){
			alert("输入的数据不能为空！"); 

		}else{
			$("#SBBB").submit();
		}		
	

		}
	
</script>
<script language="JavaScript" type="text/javascript"> 
function clearNoNum(obj){ 
    obj.value = obj.value.replace(/[^\d.]/g,"");  //清除“数字”和“.”以外的字符  
    obj.value = obj.value.replace(/\.{2,}/g,"."); //只保留第一个. 清除多余的  
    obj.value = obj.value.replace(".","$#$").replace(/\./g,"").replace("$#$","."); 
    obj.value = obj.value.replace(/^(\-)*(\d+)\.(\d\d).*$/,'$1$2.$3');//只能输入两个小数  
    if(obj.value.indexOf(".")< 0 && obj.value !=""){//以上已经过滤，此处控制的是如果没有小数点，首位不能为类似于 01、02的金额 
        obj.value= parseFloat(obj.value); 
    } 
} 
</script>



<body>
	<!-- MainForm -->
	<div style="position: relative; top: 50px;">

		<form style="margin-bottom: 25px;" class="index_form"
			action="pro_arm_insert1" method="post" id = "SBBB">
			
			<b style="font-size: 15px;"> 项目使用设备名称：</b><input  name="projectId"
				style="display: none" value="${projectId}" />
				<select id="armname" name = "armariumName" style="height: 29px; width: 150px;font-size: 16px">
					<c:forEach var="Arm" items="${Arm}">
									<option value="${Arm.armName}">${Arm.armName}</option>
					</c:forEach>			
				</select>							
			<b style="font-size: 15px; position: relative; left: 50px;"> 周天/次数：</b><input
				id="day"
				type="text" name="time" onkeyup="clearNoNum(this)" 
				style="height: 30px; width: 150px; font-size: 15px; position: relative; left: 50px;" border-radius:5px; />
			<b id="ck" style="font-size: 15px; position: relative; left: 50px;"></b>
			<div class="btn_box floatR">
				<input type="button"  class="dj" value="确认" onclick="arm_update()"
					onmousemove="this.className='input_move'"
					onmouseout="this.className='input_out'"
					style="width: 60px; height: 35px; position: relative; top: -2px; left: -880px; background-color: #1fbba6;" />
			</div>
			<span style="color:red;font-size: 16px;position: relative;left: 150px">${xxx}</span>
		</form>
		<div class="form_boxA">
			<p>项目相关设备信息</p>
			<table cellpadding="0" cellspacing="0">
				<tr>
					<th>设备编号</th>
					<th>设备名称</th>
					<th>次数/周天</th>
					<th>操作</th>
				</tr>
				<c:forEach var="proArm" items="${proArm}">
					<tr>
						<td>${proArm.armNo}</td>
						<td>${proArm.armName}</td>
						<td>${proArm.proArmTime}</td>
						<td><a href="pro_arm_delete?projectId=${proArm.projectId}&armId=${proArm.armId}">删除</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<!-- /MainForm -->
</body>
</html>