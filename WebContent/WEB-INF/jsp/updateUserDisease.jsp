<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<body>

	<script type="text/javascript">
		function checkDiseaseName() {
			var diseaseName = $("#diseaseName").val();
			$
					.ajax({
						type : "get",
						url : "isExistDiseaseName?diseaseName=" + diseaseName,
						async : true,
						success : function(data) {
							if (data != '') {
								document.getElementById("isExistName").innerHTML = "";
							} else {
								document.getElementById("isExistName").innerHTML = "名称不存在，请修改";
							}
						}
					});
		}
	</script>

	<!-- MainForm -->
	<div style="position: relative; top: 50px;">
    <span style="color: red">${msgfffffffffff}</span>
		<form style="margin-bottom: 25px;" class="index_form"
			action="addIllUserDisease" method="post">
			<span id = "isExistName" style="color: red;font-size:16px;position: relative;left: 250px;top: -20px"></span>
			<b style="font-size: 15px;position: relative;top:-25px;float:left"> 添加病例名称：</b><input name="userId"
				style="display: none;position: relative;float:left" value="${userId}" /><input type="text" onblur="checkDiseaseName()" id = "diseaseName"
				name="diseaseName" id="userId"
				style="height: 30px; width: 150px; font-size: 15px; position: relative; float:left;left: 10px;top: -35px" border-radius:5px; />
			<div class="btn_box floatR">
				<input type="submit" class="dj" value="确认"
					onmousemove="this.className='input_move'"
					onmouseout="this.className='input_out'"
					style="width: 62px; position: relative; top: -38px; left: -1100px;">
			</div>
		</form>

		<div class="form_boxA">
			<p>所患疾病信息</p>
			<table cellpadding="0" cellspacing="0">
				<tr>
					<th>病种编号</th>
					<th>疾病名称</th>
					<th>操作</th>
				</tr>
				<c:forEach var="disease" items="${userDisease}">
					<tr>
						<td>${disease.diseaseNo}</td>
						<td>${disease.diseaseName}</td>
						<td><a
							href="removeUserDisesase?diseaseId=${disease.diseaseId}&userId=${disease.userId}">删除</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<!-- /MainForm -->
</body>
</html>