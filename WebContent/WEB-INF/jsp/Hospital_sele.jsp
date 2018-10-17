<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
</head>
<style>
.index_form input {
	font-size: 20px;
	width: 200px;
	height: 40px;
	border-radius: 5px;
	font-size: 18px;
}
</style>
<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		testAjax()
	});
	function testAjax() {
		var id = $("#hospital_no").val();
		$.ajax({
			//发送数据的请求方式 
			contentType : "application/json",
			type : "GET",
			url : "hospital_getJson?hospital_no=" + id,
			//是否使用异步 
			async : true,
			success : function(data) {
				//定义变量
				var shuju = "";
				//循环json数组 
				$.each(data, function() {
					//返回的是集合list里面的东西 就是用 this表示  返回单个就是data.
					shuju += "<tr><td>" + this.hospital_no + "</td><td>"
							+ this.hospital_name + "</td><td>" + this.hospital_level
							+ "</td><td>" + this.hospital_phone + "</td><td>"
							+ "<button><a href='Hospital_update?id=" + this.hospital_id
							+ "' >修改</a></button> | " + "<button><a onclick = deleteoneh("
							+ this.hospital_id + ") >删除</a></button> " + "</td></tr>";
				});
				//获得标签元素   并且往标签添加 数据 
				$("#tb").html(shuju);
			}
		});
	}
	function deleteoneh(hospital_id) {
		var r = confirm("确认删除!");
		if (r == true) {
			location.href = "deleteoneh?id=" + hospital_id;
		} else {

		}
	}
</script>
<body>
	<div style="position: relative; top: 50px;">
		<b style="font-size: 15px;position: relative;top: -20px"> 请输入要查询的医疗机构编号：</b> <input type="text"
			id="hospital_no" oninput="testAjax()"
			style="height: 30px; width: 150px; font-size: 15px; position: relative;top: -20px; left: 10px; border-radius: 5px;" />

		<div class="form_boxA">
			<p>医疗机构信息列表</p>
			<table cellpadding="0" cellspacing="0">
				<tr>
					<th>医疗机构编号</th>
					<th>医疗机构名称</th>
					<th>医疗机构等级</th>
					<th>医疗机构电话</th>
					<th>操作</th>
				</tr>

				<tbody id="tb">
				<tbody>
			</table>
		</div>
	</div>
</body>
</html>