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
		var id = $("#drugs_no").val();
		$.ajax({
			//发送数据的请求方式 
			contentType : "application/json",
			type : "GET",
			url : "drugs_getJson?drugs_no=" + id,
			//是否使用异步 
			async : true,
			success : function(data) {
				//定义变量
				var shuju = "";
				//循环json数组 
				$.each(data, function() {
					//返回的是集合list里面的东西 就是用 this表示  返回单个就是data.
					shuju += "<tr><td>" + this.drugs_no + "</td><td>"
							+ this.drugs_name + "</td><td>" + this.drugs_type
							+ "</td><td>" + this.drugs_price + "</td><td>"
							+ "<button><a href='Drugs_update?id=" + this.drugs_id
							+ "' >修改</a></button> | " + "<button><a onclick = deleteone("
							+ this.drugs_id + ") >删除</a></button> " + "</td></tr>";
				});
				//获得标签元素   并且往标签添加 数据 
				$("#tb").html(shuju);
			}
		});
	}
	
	function deleteone(drugs_id) {
		var r = confirm("确认删除!");
		if (r == true) {
			location.href = "deleteone?id=" + drugs_id;
		} else {

		}
	}
</script>
<body>
	<div style="position: relative; top: 50px;">
		<b style="font-size: 15px;position: relative;top: -20px"> 请输入要查询的药品编号：</b> <input type="text"
			id="drugs_no" oninput="testAjax()"
			style="height: 30px; width: 150px; font-size: 15px; position: relative;top: -20px; left: 10px; border-radius: 5px;" />

		<div class="form_boxA">
			<p>药品信息列表</p>
			<table cellpadding="0" cellspacing="0">
				<tr>
					<th>药品编号</th>
					<th>药品名称</th>
					<th>药品类别</th>
					<th>药品价格</th>
					<th>操作</th>
				</tr>
				<tbody id="tb">
 <!--   	 	<c:if test="${list!=null}">	
						<c:forEach items="${list}" var="list">
							<tr>
								<td>${list.drugs_no}</td>
								<td>${list.drugs_name}</td>
								<td>${list.drugs_type}</td>
								<td>${list.drugs_price}</td>
								<td>
								<button onclick="Drugs_update(${list.drugs_id})">修改</button> |
									<button onclick="deleteone(${list.drugs_id})">删除</button>
								</td>
							</tr>
						</c:forEach>
					</c:if>
					-->
				<tbody>
			</table>
		</div>
	</div>
</body>
</html>