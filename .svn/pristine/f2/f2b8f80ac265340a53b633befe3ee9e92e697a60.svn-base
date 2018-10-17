<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>登录</title>
<link rel="stylesheet" type="text/css" href="css/public.css" />
<link rel="stylesheet" type="text/css" href="css/page.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/public.js"></script>
</head>
<style>
.logC .lll{
width: 100%;
	height: 45px;
	background-color: #ee7700;
	border: none;
	color: white;
	font-size: 18px;
}
</style>
<body>
 <form action="cklogin" method="post">
	<!-- 登录body -->
	<div class="logDiv">
		<img class="logBanner" src="img/timg.png" height="950"/>
		<div class="logGet">
			<!-- 头部提示信息 -->
			<div class="logD logDtip">
				<p class="p1">登录</p>
			</div>
			<!-- 输入框 -->
			<div class="lgD">
				<img class="img1" src="img/logName.png" /><input name="userNo" type="text" placeholder="请输入管理员帐号" />
			</div>
			<div class="lgD">
				<img class="img1" src="img/logPwd.png" /><input name="userPass" type="password"  placeholder="请输入密码" />
			</div>
			
			<div class="logC" >
				<%-- <a href="<%=basePath%>index" target="_self"></a> --%>
				<input type="submit" class="lll" value="登录"/>
			</div>
				<span style="color: red;position: relative;left:125px;top:20px">${msg}</span>
				
		</div>
	</div>
	<!-- 登录body  end -->
	</form>
   
</body>
</html>