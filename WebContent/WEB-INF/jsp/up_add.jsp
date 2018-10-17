<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>添加数据</h2>
	<form action="addUserProject" method="post">
		用户ID：
	   <select name="user_id">
			<c:forEach items="${userId}" var="id">
				<option  value="${id.user_id}">${id.user_id}</option>
			</c:forEach>
		</select> 
		项目ID：
		 <select name="project_id">
			<c:forEach items="${projectId}" var="id">
				<option value="${id.project_id}">${id.project_id}</option>
			</c:forEach>
		 </select> 
		使用次数：<input type="text" name="time" />
		 <input type="submit" />
	</form>
</body>
</html>