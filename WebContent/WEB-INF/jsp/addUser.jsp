<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<script src="js/jquery-1.10.1.min.js"></script>
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
				function addUser() {
					var no = $("#userNo").val();
					var name = $("#username").val();
					var work = $("#work").val();

					if (no == '' || name == '' || work == '') {
						alert("所有输入不能为空");
						//$("#sss").html("所有输入不能为空");
						
						return false;
					} else {
						$("#tt").submit();
						//$("#sss").html("添加成功!");
						alert("添加成功!");
						return true;
					}
				}

				/* $(
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
						}) */
			</script>
			<script type="text/javascript">
				function selectUserAajx() {
					var userNo = $("#userNo").val();
							$.ajax({
								//dataType : "json",//返回的数据类型
								contentType : "application/json",// 发送信息服务器的内容的编码格式
								type : "get",
								url : "isExistUser2?userNo=" + userNo,
								async : true,// 是否使用异步
								//回调函数
								success : function(data) {
									if (data == 1) {
										document.getElementById("isExist").innerHTML = "编号已存在，不可重复！！";
									}
								},
								error : function() {
								}
							});
				}
			</script>
			<form action="addOrdinaryUser" method="post" id="tt"
				onsubmit="return addUser()">
				<div class="form_boxC">
					<p>
						"<span class="f_cB">*</span>"号为必填项目
					</p>
					<table cellpadding="0" cellspacing="0">
					
						<tr>
							<th width="100">用户编号 <span class="f_cB">*</span></th>
							<td><div class="txtbox floatL" style="width: 200px;">
									<input type="text" onblur="selectUserAajx()" size="5" id = "userNo" name="userNo"
									onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"	style="width: 180px; height: 35px;" id="no">
								</div></td>
								<span id="isExist" style="color: red; font-size: 20px;
								position: relative;top: 76px;left: 350px"></span>
						</tr>
						<tr>
							<th>姓名 <span class="f_cB">*</span></th>
							<td><div class="txtbox floatL" style="width: 100px;">
									<input type="text" size="5" name="userName"
							onkeyup="this.value=this.value.replace(/(^\s+)|(\s+$)/g,'');"			style="width: 80px;" id="name">
								</div></td>
						</tr>

						<th>性别 <span class="f_cB">*</span></th>
						<td><select name="userSex" style="height: 29px; width: 100px">
								<option value="男">男</option>
								<option value="女">女</option>
						</select></td>
						</tr>
						<th>工作 <span class="f_cB">*</span></th>
						<td><select id="work" name="userWork" style="height: 29px; width: 100px">
								<option value="有">有</option>
								<option value="无">无</option>
						</select></td>

						</div>
						</td>
						<td>

							<div style="position: relative; left: 1000px; top: -200px">
								<div class="btn_boxB floatR mag_l20">
									<input name="" type="reset" value="取消"
										onmousemove="this.className='input_move'"
										onmouseout="this.className='input_out' ">
								</div>

								<div class="btn_box floatR">
									<input name="" type="submit" name="" value="提交" onclick="addUser()"
										onmousemove="this.className='input_move'"
										onmouseout="this.className='input_out'">
								</div>
							</div>
						</td>
						</tr>



						<div id="BtmBtn" style="height: 10px"></div>
						</form>
						<!-- /Popup -->
</body>
</html>