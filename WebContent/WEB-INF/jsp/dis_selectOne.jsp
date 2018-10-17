<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + 
			":" + request.getServerPort()
			+ path + "/";
%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


<body>
	<form action="dis_showone" method="post">
		疾病id:<input type="text" name="disease_id" /> 
				<input type="submit" value="查询" />
	</form>
	
<!--  	<table>
		<tr>
			<th>疾病id </th>
			<th>疾病编号</th>
			<th>疾病名称</th>
		</tr>
		<tr>
			<td>${list.disease_id}</td>
			<td>${list.disease_no}</td>
			<td>${list.disease_name}</td>
		</tr>
		
	</table>
	<a href="login.jsp">返回</a>
	-->	
</body>
</html>