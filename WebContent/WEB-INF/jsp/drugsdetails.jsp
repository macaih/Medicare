<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + 
			":" + request.getServerPort()
			+ path + "/";
%>
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
<script type="text/javascript">
	function reg() {
		location.href = "<%=basePath%>addProject_Drugs";	
	}
	</script>
<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
<body>
	<div style="position: relative; top: 50px;">
		

		<div class="form_boxA">
			<p>药品信息列表</p>
			<table cellpadding="0" cellspacing="0">
				<tr>
				    <th>项目ID</th>				   
					<th>药品编号</th>
					<th>药品名称</th>
					<th>药品类别</th>
					<th>药品价格</th>
					<th>操作</th>
				</tr>
					

				<tbody id="tb">
				<tbody>
			
	<c:forEach var="list" items="${drugs}" varStatus="loop">
                <tr>
                    
                    <td>${list.project_id}</td>
                    <td>${list.drugs_no}</td>
                    <td>${list.drugs_name}</td>
                    <td>${list.drugs_type}</td>
                    <td>${list.drugs_price}</td>
                    <td><a
							href="pro_dru_delete?project_id=${list.project_id}&drugs_id=${list.drugs_id}">删除</a></td>
                </tr>
            </c:forEach>
			</table>
			<button onclick="reg()">添加</button></br>
		</div>
	</div>
</body>
</html>