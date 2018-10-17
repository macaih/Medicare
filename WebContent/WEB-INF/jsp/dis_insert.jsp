<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<script src="js/jquery-1.10.1.min.js" type="text/javascript"></script>
<script src="js/side.js" type="text/javascript"></script>
 
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
</head>
<script type="text/javascript">
	function selectAll() {
		location.href = "<%=basePath%>dis_selectAll";
		
	}
	function selectOne() {
		location.href = "<%=basePath%>dis_selectOne";
		
	}
	function dis_insert() {

	var no=$("#no").val();
	var name=$("#name").val();
	if(no==""||name=="")
	{
	alert("不能为空");
	 location.href = "<%=basePath%>dis_insert";
	 }
	else{
		location.href = "<%=basePath%>dis_insert1";
	}
	}


	function checkdis_no(){
	var no=$("#no").val();
	var name=$("#name").val();
	$.ajax({
	type:"GET",
	url:"dis_checkarm_no?disease_no="+no,
	async:true,
	success:function(data){
		var check="编号重复！";
		var check1="";
		if(data!=''){
		$("#ck").html(check);
		}else{
		$("#ck").html('');
		}
	}
	}
	);
	
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
			<div class="form_boxC">
				<p>
					"<span class="f_cB">*</span>"号为必填项目
				</p>
				<table cellpadding="0" cellspacing="0" style="position: relative;top: 40px">

					<form action="dis_insert1" method="post">
						<tr>
							<th width="120">疾病编号<span class="f_cB">*</span></th>
							<td><div class="txtbox floatL" style="width: 200px;">
									<input id="no" oninput="checkdis_no()" onkeyup="this.value=this.value.replace(/[^_a-zA-Z0-9]/g,'')"
									onpaste="this.value=this.value.replace(/[^_a-zA-Z0-9]/g,'')"  
									name="disease_no" type="text" size="5" value=""
									
										style="width: 180px; height: 35px;"><th id="ck"></th>
								</div></td>
						</tr>
						<tr>
							<th>疾病名称 <span class="f_cB">*</span></th>
							<td><div class="txtbox floatL" style="width: 100px;">
									<input id="name"
									name="disease_name" type="text" size="5" value=""
								onkeyup="this.value=this.value.replace(/(^\s+)|(\s+$)/g,'');"		style="width: 80px;">
								</div></td>
							<td>
							
								<div style="position: relative; left:1000px; top:-200px">
									<div class="btn_boxB floatR mag_l20">
										<input onclick="selectAll()" name="" type="button" value="取消"
											onmousemove="this.className='input_move'"
											onmouseout="this.className='input_out' ">
									</div>
									<div class="btn_box floatR">
										<input onclick="dis_insert()" name="" type="submit" value="提交"
											onmousemove="this.className='input_move'"
											onmouseout="this.className='input_out'">
									</div>
								</div>
							</td>
						</tr>
					</form>
</body>
</html>