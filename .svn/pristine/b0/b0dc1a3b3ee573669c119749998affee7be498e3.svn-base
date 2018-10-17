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
	<h3>u_p_id----用户ID-----项目ID-----使用次数 </h3><br/>
	<c:if test="${list!=null}">
		<c:forEach items="${list}" var="list">
			${list.u_p_id}----------------${list.user_id}------------${list.project_id}------------${list.time}
			<a href="delete?id=${list.u_p_id}">删除</a>
			<a href="update?id=${list.u_p_id}">修改</a>
			<br />
		</c:forEach>
	</c:if>
</body>
</html>