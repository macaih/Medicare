<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%><html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
.tian input {
	height: 33px;
	line-height: 33px;
	vertical-align: middle;
	border: none;
	font-size: 16px;
	background-color: #1fbba6;
	padding: 0px 10px;
	color: #FFF;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	cursor: pointer;
}

.tian2 input {
	height: 33px;
	line-height: 33px;
	vertical-align: middle;
	border: none;
	font-size: 16px;
	background-color: #1fbba6;
	padding: 0px 10px;
	color: #FFF;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	cursor: pointer;
}
</style>
<body>

	<!-- Popup -->
	<div id="Popup">

		<!-- SubPopup -->
		<div id="SubPopup">
			<script type="text/javascript">
				$(
						function() {
							$(".select").each(
									function() {
										var s = $(this);
										var z = parseInt(s.css("z-index"));
										var dt = $(this).children("dt");
										var dd = $(this).children("dd");
										var _show = function() {
											dd.slideDown(200);
											dt.addClass("cur");
											s.css("z-index", z + 1);
										};
										var _hide = function() {
											dd.slideUp(200);
											dt.removeClass("cur");
											s.css("z-index", z);
										};
										dt.click(function() {
											dd.is(":hidden") ? _show()
													: _hide();
										});
										dd.find("a").click(function() {
											dt.html($(this).html());
											_hide();
										});
										$("body").click(
												function(i) {
													!$(i.target).parents(
															".select").first()
															.is(s) ? _hide()
															: "";
												});
									})
						})
			
			</script>
			<script type="text/javascript">
			function back()	{
			location.href = "addIllUser1";
				}
				
				
			</script>

			<script type="text/javascript">
							function checkdiseaseName() {
					var no = $("#projectName").val();
							$.ajax({
								type : "get",
								url : "isExistProjectName?projectName=" + no,
								async : true,
								success : function(data) {
									if (data == '') {
										document.getElementById("isExistName").innerHTML = "项目名称不存在，请修改!!";
									}else{
									document.getElementById("isExistName").innerHTML = "";
									}
								}
							});
				}
			</script>
			<div class="form_boxC">
				<p>
					"<span class="f_cB">*</span>"号为必填项目
				</p>
				<table cellpadding="0" cellspacing="0">
					<form action="addIllUser3" method="post">
						<tr>
							<span style="color: red;font-size: 18px;position: relative;left: 350px;top: 30px">${message}</span>
							<th>项目名称 <span class="f_cB">*</span></th>
							<td><input name="userId"
								style="display: none; width: 0px; height: 0px" value="${userId}" />
								<div class="txtbox floatL" style="width: 200px;">
									<select name="projectName" style="height: 29px; width: 200px">
										<c:forEach var="project" items="${project}">
											<option value="${project.project_name}">${project.project_name}</option>
										</c:forEach>
									</select>
								</div></td>
							<span id="isExistName"
								style="color: red; font-size: 18px; position: relative; left: 330px; top: 35px"></span>
						</tr>
						<tr>
							<th>次数 <span class="f_cB">*</span></th>
							<td><div class="txtbox floatL" style="width: 200px;">
									<input name="time"
										onkeyup="this.value=this.value.replace(/[^\d]/g,'') "
										onafterpaste="this.value=this.value.replace(/[^\d]/g,'') "
										type="text" size="5" value=""
										style="width: 180px; height: 32px;" />
								</div></td>
							<td>
								<div class="tian"
									style="position: relative; left: -180px; top: 100px;">
									<input name="" type="submit" value="添加"
										onmousemove="this.className='input_move'"
										onmouseout="this.className='input_out'">
								</div>
								<div class="tian"
									style="position: relative; left: -80px; top: 68px;">
									<a onclick="back()" target="main" class="cks"><input
										type="button" value="返回"
										onmousemove="this.className='input_move'"
										onmouseout="this.className='input_out'"> </a>
								</div>
							</td>
						</tr>
					</form>
				</table>
				<!-- /Popup -->
</body>
</html>