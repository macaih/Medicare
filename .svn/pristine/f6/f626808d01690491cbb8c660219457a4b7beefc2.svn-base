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
<base href="<%=basePath%>">
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

<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
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

<script type="text/javascript">
	function delete_pro(project_id) {
	location.href = "pro_delete?project_id="+project_id;
		<%-- location.href = "<%=basePath%>pro_delete"; --%>
		
	}
	function update_pro(project_id) {
		location.href = "pro_update?project_id="+project_id;
	}
		function select_pro(project_id) {
		location.href = "pro_arm_selectAll?project_id="+project_id;
	}
	function selectOne() {
		location.href = "<%=basePath%>pro_selectOne";
	}

</script>
<script type="text/javascript">
	function select_pro_dr() {
		location.href = "<%=basePath%>showAll1";	
	}
	
	function select_drugsdetails(id) {
		location.href = "drugsdetails?id="+id;	
	}
	function select_project_drugs() {
		location.href = "<%=basePath%>showAll1";	
	}
		function select_drugs(id){
		location.href = "ducProjectDrugs?projectId="+id;	
	}
</script>

<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		testAjax()
	});
	
		function testAjax() {
		var project_no = $("#project_no").val();

		$.ajax({
			//dataType : "json",//返回的数据类型
			contentType : "application/json",// 发送信息服务器的内容的编码格式
			type : "get",
			url : "getProject?projectNo=" + project_no,
			async : true,// 是否使用异步
			//回调函数

			success : function(data) {
				var html = "";
				$.each(data, function() {
					html += "<tr><td>" + this.project_no + "</td><td>"
							+ this.project_name + "</td><td>" + this.project_level
							+"</td><td>"
							+ "<button><a href='selectProArm?projectId="
							+ this.project_id + "'>查看设备详情</a></button> | "
							+ "<button><a href='ducProjectDrugs?projectId="
							+ this.project_id + "'>查看药品详情</a></button>"+ "</td><td>"
							+ "<button><a onclick=deleteProject("
							+ this.project_id + ")>删除</a></button> | "+"<button><a href='pro_update?project_id="
							+ this.project_id + "'>修改</a></button>"
							+ "</td></tr>";
				})
				$("#tb").html(html);

			},
			error : function() {
			}
		});
	}
	
	function deleteProject(projectId) {
				var r = confirm("确认删除!");
		if (r == true) {
			location.href = "removeProject?projectId=" + projectId;
		} else {
		
		}
	}
</script>

<body>
	<!-- MainForm -->
	<div style="position: relative; top: 50px;">

		<form style="margin-bottom: 25px;" class="index_form"
			action="pro_showone" method="post">

			<b style="font-size: 15px;"> 请输入诊疗项目编号：</b> <input id="project_no"
				type="text" name="project_no" oninput="testAjax()"
				style="height: 30px; width: 150px; font-size: 15px; position: relative; left: 10px;" border-radius:5px; />

		</form>

		<div class="form_boxA">
			<p style="height: 31px;">诊疗项目信息列表</p>
			<table cellpadding="0" cellspacing="0">

				<tr>
					<th>诊疗项目编号</th>
					<th>诊疗项目名称</th>
					<th>诊疗项目等级</th>
					<th>诊疗项目信息</th>
					<th>操作</th>
				</tr>
				<tbody id="tb">
				</tbody>
			</table>

		</div>
		<div></div>
		<!-- /MainForm -->
</body>
</html>