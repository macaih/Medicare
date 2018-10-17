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
<link href="css/print.css" rel="stylesheet" type="text/css"
	media="print" />
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

				function checkProjectName() {
					var no = $("#diseaseName").val();
					$
							.ajax({
								type : "get",
								url : "isExistDiseaseName?diseaseName=" + no,
								async : true,
								success : function(data) {
									if (data == '') {
										document.getElementById("isExistName").innerHTML = "疾病名称不存在，请修改!!";
									}
								}
							});
				}

				function back() {
					location.href = "fanhui";
				}
			</script>
			<script type="text/javascript">
			function cknull(){
		var amount = $("#amount").val();
		if(amount==''){
	         alert("全部不能为空！！！");
		}
		else{
			 document.getElementById("SBBBBB").submit();
		}
	}</script>
			<form action="pro_add3" method="post" id = "SBBBBB">
				<div class="form_boxC">
					<p>
						"<span class="f_cB">*</span>"号为必填项目
					</p>
					<table cellpadding="0" cellspacing="0">


						<tr><span style="color: red;font-size: 18px;position: relative;">${msg}</span>
							<th width="120">药品名称 <span class="f_cB">*</span></th>
							<td><div class="txtbox floatL" style="width: 200px;">
									<input name="projectNo"
										style="display: none; width: 0px; height: 0px"
										value="${projectNo}" /> <select name="drugsName"
										style="height: 29px; width: 200px;font-size: 16px">
										<c:forEach var="drugs" items="${drugs}">
											<option value="${drugs.drugs_name}">${drugs.drugs_name}</option>
										</c:forEach>
									</select>
								</div></td>
						</tr>
						<tr>
							<th>用量 <span class="f_cB">*</span></th>
							<td><div class="txtbox floatL" style="width: 100px;">
									<input id = "amount" name="amount" type="text" size="5" value="" onkeyup="this.value=this.value.replace(/[^\d]/g,'') " onafterpaste="this.value=this.value.replace(/[^\d]/g,'') "
										style="width: 80px;">
								</div></td>
						</tr>
						<tr>
							</div>
							</td>
							<td>
								<div style="position: relative; left: 1250px; top: -240px">

									<div class="btn_box floatR">
										<input type="button" onclick="cknull()" value="添加"
											onmousemove="this.className='input_move'"
											onmouseout="this.className='input_out'">
									</div>

									<div class="btn_box floatR"
										style="position: relative; left: 150px; top: 0px;">
										<input onclick="back()" type="button" value="完成"
											onmousemove="this.className='input_move'"
											onmouseout="this.className='input_out'">
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