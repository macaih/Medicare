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
<title>Insert title here</title>
</head>
<style>
		

		.index_form input{
			font-size:20px;
			 width: 200px;	
			 height: 40px;
			
			border-radius:5px;
			font-size:18px;
		}
		
	</style>
<body>
<div class="form_boxA">	
	<table>

		<tr>
			<th>疾病ID</th>
			<th>疾病编号</th>
			<th>疾病名称</th>
		</tr>
		<tbody id="tb">
		<tr>
			<td>${dis_list.disease_id}</td>
			<td>${dis_list.disease_no}</td>
			<td>${dis_list.disease_name}</td>
		</tr>
		<tbody>
	</table>
</div>
</body>
</html>