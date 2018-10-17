<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<link href="css/base.css" rel="stylesheet" type="text/css" media="print" />
<script src="js/jquery-1.10.1.min.js" type="text/javascript"></script>
<script src="js/side.js" type="text/javascript"></script>

<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
</head>
<body>

	<!-- Popup -->
	<div id="Popup">

		<!-- SubPopup -->
		<div id="SubPopup">
			<script type="text/javascript">
				$(function() {
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
									dd.is(":hidden") ? _show() : _hide();
								});
								dd.find("a").click(function() {
									dt.html($(this).html());
									_hide();
								});
								$("body").click(
										function(i) {
											!$(i.target).parents(".select")
													.first().is(s) ? _hide()
													: "";
										});
							})
				})
			</script>



			<script type="text/javascript">
				function checkArmariumName() {
					var armName = $("#armName").val();
					$
							.ajax({
								type : "get",
								url : "isExistArmName?armName=" + armName,
								async : true,
								success : function(data) {
									if (data != '') {
										document.getElementById("isArmName").innerHTML = "";
									} else {
										document.getElementById("isArmName").innerHTML = "名称不存在吗，请修改";
									}
								}
							});
				}

			</script>
			
			<script type="text/javascript">
			function cknull(){
		var proArmTime = $("#proArmTime").val();
		if(proArmTime==''){
	         alert("全部不能为空！！！");
		}
		else{
			 document.getElementById("SBBBBB").submit();
		}
	}
			</script>
			<form action="pro_add2" method="post" id = "SBBBBB">
				<div class="form_boxC">
					<p>
						"<span class="f_cB">*</span>"号为必填项目
					</p>
					<table cellpadding="0" cellspacing="0">

						<tr>
							<span style="color: red;font-size: 18px;position: relative;">${msg}</span>
							<span style="color: red" id="isArmName"></span>
							<th width="120">设备名称 <span class="f_cB">*</span></th>
							<td><div class="txtbox floatL" style="width: 200px;">
									<input name="projectNo"
										style="display: none; width: 0px; height: 0px"
										value="${projectNo}" /> 
										<select name="armName" style="height: 29px; width: 200px;font-size: 16px">
											<c:forEach var="arm" items="${arm}">
												<option value="${arm.armariumName}" >${arm.armariumName}</option>
											</c:forEach>
										</select>
								</div></td>
						</tr>
						<tr>
							<th>次数 <span class="f_cB">*</span></th>
							<td><div class="txtbox floatL" style="width: 100px;">
									<input name="proArmTime" id = "proArmTime" type="text" size="5" value="" onkeyup="this.value=this.value.replace(/[^\d]/g,'') " onafterpaste="this.value=this.value.replace(/[^\d]/g,'') "
										style="width: 80px;">
								</div></td>
						</tr>

						<tr>
							</div>
							</td>
							<td>
								<div style="position: relative; left: 1000px; top: -200px">

									<div class="btn_box floatR"
										style="position: relative; left: 50px; top: 0px;">
										<input name=""
											style="position: relative; left: -880px" type="button" onclick="cknull()"
											value="添加" onmousemove="this.className='input_move'"
											onmouseout="this.className='input_out'">
										
									</div>
									<div class="btn_box floatR">
										<button style="position: relative; left: -900px;
										top: 280px;font-size: 16px;background-color: #1fbba6;color: #FFF;height: 32px">
											<a href="pro_add22?projectNo=${projectNo}" style="text-decoration: none; color: #fff" >下一步</a>
										</button>
									</div>
								</div>
							</td>
						</tr>
						</div>
						<!-- /selectbox -->
						</td>
						</tr>
						</tr>

						<div id="BtmBtn" style="height: 10px"></div>
						</form>
</body>
</html>