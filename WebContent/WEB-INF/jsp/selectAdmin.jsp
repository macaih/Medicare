<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="generator" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
<link href="css/haiersoft.css" rel="stylesheet" type="text/css" media="screen,print" />
<link href="css/print.css" rel="stylesheet" type="text/css" media="print" />
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
	$(document).ready(function() {
		selectAdminAajx();
	});

	function selectAdminAajx() {
		var userNo = $("#userNo").val();

		$.ajax({
			//dataType : "json",//返回的数据类型
			contentType : "application/json",// 发送信息服务器的内容的编码格式
			type : "get",
			url : "selectAdminUserByNo?userNo=" + userNo,
			async : true,// 是否使用异步
			//回调函数

			success : function(data) {
				var html = "";
				$.each(data, function() {
					html += "<tr><td>" + this.userId + "</td><td>"
							+ this.userNo + "</td><td>" + this.userName
							+ "</td><td>" + this.userSex  + "</td><td>"
							+ "<button><a href='updateAdminUser?userId=" + this.userId
							+ "'>修改</a></button> | " + "<button><a onclick=deleteAdmin(" + this.userId
							+ ") >删除</a></button>" + "</td></tr>";
				})
				$("#userinfo").html(html);
			},
			error : function() {
				$("#userinfo").html("无信息");
			}
		});

	}

	function deleteAdmin(id) {
		var r = confirm("确认删除!");
		if (r == true) {
			location.href = "removeAdminUser?userId=" + id;
		} else {
		
		}
	}
</script>
<body>

	<!-- MainForm -->
	<div style="position: relative; top: 50px;">

		<form style="margin-bottom: 25px;" class="index_form">

			<b style="font-size: 15px;"> 请输入管理员编号：</b><input type="text"
				id="userNo" oninput="selectAdminAajx()"
				style="height: 30px; width: 150px; font-size: 15px; position: relative; left: 10px;" border-radius:5px; />
		</form>

		<div class="form_boxA">
			<p>管理员信息</p>
			<table cellpadding="0" cellspacing="0">
				<tr>
					<th>序号</th>
					<th>管理员编号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>操作</th>
				</tr>
				<tbody id="userinfo">

				</tbody>
			</table>

		</div>
		<!-- /MainForm -->
</body>
</html>