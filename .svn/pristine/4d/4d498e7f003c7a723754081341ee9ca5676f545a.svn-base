<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

	<!-- MainForm -->
	<div style="position: relative; top: 50px;">

		<form style="margin-bottom: 25px;" class="index_form" action="addIllUserRroject" method="post">

			<b style="font-size: 15px;"> 诊疗项目名称：</b><input name = "userId" style="display:none" value = "${userId}"/><input type="text" name="projectName"
				style="height: 30px; width: 150px; font-size: 15px; position: relative; left: 10px;" border-radius:5px; />

			<b style="font-size: 15px; position: relative; left: 50px;"> 次数：</b><input
				type="text" name="projectTime"
				style="height: 30px; width: 150px; font-size: 15px; position: relative; left: 50px;" border-radius:5px; />
			<div class="btn_box floatR">

				<input type="submit" class="dj" value="确认"
					onmousemove="this.className='input_move'"
					onmouseout="this.className='input_out'"
					style="width: 60px; height: 35px; position: relative; top: -2px; left: -880px; background-color: #1fbba6;" />
			</div>
		</form>

		<div class="form_boxA">
			<p>所接受诊疗项目信息</p>
			<table cellpadding="0" cellspacing="0">
				<tr>
					<th>项目编号</th>
					<th>诊疗项目名称</th>
					<th>次数</th>
					<th>操作</th>
				</tr>
				<tr>
				<c:forEach var="project" items="${userProject}">
					<tr>
						<td>${project.projectNo}</td>
						<td>${project.projectName}</td>
						<td>${project.projectTime}</td>
						<td><a href="removeUserProject?projectId=${project.projectId}&userId=${project.userId}">删除</a></td>
					</tr>
				</c:forEach>
				</tr>

			</table>

		</div>
		<!-- /MainForm -->
</body>
</html>