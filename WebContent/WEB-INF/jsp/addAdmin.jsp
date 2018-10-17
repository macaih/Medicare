<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
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
<script>
          function validate() {
              var pwd1 = document.getElementById("pwd1").value;
              var pwd2 = document.getElementById("pwd2").value;
		
              if(pwd1 == pwd2) {
                  document.getElementById("tishi").innerHTML="<font color='green'>两次密码相同</font>";
                  document.getElementById("submit").disabled = false;
              }
              else {
                  document.getElementById("tishi").innerHTML="<font color='red'>两次密码不相同</font>";
                document.getElementById("submit").disabled = true;
              }
          }
      </script>
      <script type="text/javascript">
				function add_Admin() {
					var No = $("#no").val();
					var Name = $("#name").val();
					var Pass = $("#pwd1").val();
					//alert(Price);
					if (No == '' || Name == '' || Pass == '') {
						alert("所有输入不能为空");
						//$("#sss").html("所有输入不能为空");
						location.href = "<%=basePath%>addAdmin";
					} 
					else {
						$("#tt").submit();
						//$("#sss").html("添加成功");
						alert("添加成功")
					}
				}
		
	function checkuser_no(){
	var no=$("#no").val();
	//alert(no);
	$.ajax({
	type:"GET",
	url:"checkuser_no?userNo="+no,
	async:true,
	success:function(data){
		var check="管理员编号重复！";
		var check1="";
		if(data!=''){
		//$("#ck").html(check);
		alert(check);
		location.href = "<%=basePath%>addAdmin";
		}
		else{
		$("#ck").html(check1);
		}
	}
	});
	}			
				
				
				
				

				</script>
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
			<form action="addAdminUser" method = "post" id="tt">
				<div class="form_boxC">
					<p>
						"<span class="f_cB">*</span>"号为必填项目
					</p>
					<table cellpadding="0" cellspacing="0">
						<tr>
							<th width="100">管理员编号 <span class="f_cB">*</span></th>
							<td><div class="txtbox floatL" style="width: 200px;">
									<input  id="no" name="userNo" onblur="checkuser_no()" type="text" size="5" value=""
									onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"	style="width: 180px; height: 35px;">
								</div></td>
						</tr>
						<tr>
							<th>管理员姓名 <span class="f_cB">*</span></th>
							<td><div class="txtbox floatL" style="width: 200px;">
									<input id="name" name="userName" type="text" size="5" value=""
							onkeyup="this.value=this.value.replace(/(^\s+)|(\s+$)/g,'');"		style="width: 180px;height: 35px;">
								</div></td>
						</tr>
						<tr>
						<th>性别 <span class="f_cB">*</span></th>
							<td><select name="userSex" style="height: 29px; width: 100px">
									<option value="男">男</option>
									<option value="女">女</option>
							</select> <!-- selectbox -->
								 <!-- /selectbox -->
							</td>
							</tr>
						<tr>
							<th width="100">密码 <span class="f_cB">*</span></th>
							<td><div class="txtbox floatL" style="width: 200px;">
									<input name="userPass" type="password" size="5" value=""
									id="pwd1" style="width: 180px; height: 35px;">
								</div></td>
						</tr>
						<tr>
							<th width="100">确认密码 <span class="f_cB">*</span></th>
							<td><div class="txtbox floatL" style="width: 200px;">
									<input name="" type="password" size="5" value=""
										id="pwd2" onkeyup="validate()"  style="width: 180px; height: 35px;">
								<span id="tishi"></span>
								</div></td>
							<td>
							
								<div style="position: relative; left:1000px; top:-200px">
									<div class="btn_boxB floatR mag_l20">
											<input name=""  value="取消" type="reset"
											onmousemove="this.className='input_move'"
											onmouseout="this.className='input_out' ">
									</div>
									<div class="btn_box floatR" >
								
										<input name="" onclick="add_Admin()" type="button" value="提交"
											onmousemove="this.className='input_move'"
											onmouseout="this.className='input_out'">
									</div>
								</div>
							</td>
						</tr>


						<div id="BtmBtn" style="height: 10px">
							
						</div>
						</form>
						<!-- /Popup -->
</body>
</html>				
						</div>
						</form>
						<!-- /Popup -->
</body>
</html>