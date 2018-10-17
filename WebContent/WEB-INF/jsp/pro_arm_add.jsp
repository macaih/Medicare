<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="generator" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<link href="css/haiersoft.css" rel="stylesheet" type="text/css" media="screen,print" />
<link href="css/print.css" rel="stylesheet" type="text/css"  media="print" />
<script src="js/jquery-1.10.1.min.js"></script>
<script src="js/side.js" type="text/javascript"></script>

<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
</head>




<script type="text/javascript">
	function selectAll() {
		location.href = "<%=basePath%>arm_selectAll";
		
	}
	function selectOne() {
		location.href = "<%=basePath%>arm_selectOne";
		
	}
</script>

<body>	
<!-- Popup -->
<div id="Popup">

<!-- SubPopup -->
<div id="SubPopup">
<script type="text/javascript">
$(function(){
$(".select").each(function(){
var s=$(this);
var z=parseInt(s.css("z-index"));
var dt=$(this).children("dt");
var dd=$(this).children("dd");
var _show=function(){dd.slideDown(200);dt.addClass("cur");s.css("z-index",z+1);};
var _hide=function(){dd.slideUp(200);dt.removeClass("cur");s.css("z-index",z);};
dt.click(function(){dd.is(":hidden")?_show():_hide();});
dd.find("a").click(function(){dt.html($(this).html());_hide();});
$("body").click(function(i){ !$(i.target).parents(".select").first().is(s) ? _hide():"";});})})
</script>


<form action="pro_arm_insert1" method="post">
	<div class="form_boxC">
	<p>"<span class="f_cB">*</span>"号为必填项目</p>
	<table cellpadding="0" cellspacing="0">	
	<tr>
	<th width="120">诊疗项目名称  <span class="f_cB">*</span></th>
	<td><div class="txtbox floatL" style="width:200px;"><input name="project_name" type="text" size="5" value="" style="width: 180px;height: 35px;"></div></td>
	</tr>
	<tr>
	<th>使用的医疗设施名称  <span class="f_cB">*</span></th>
	<td><div class="txtbox floatL" style="width:200px;"><input name="armarium_name" type="text" size="5" value="" style="width: 180px;"></div></td>
	</tr>
	<tr>
	<th>诊疗项目周期<span class="f_cB">*</span></th>
	<td><div class="txtbox floatL" style="width:200px;"><input name="day" type="text" size="5" value="" style="width: 180px;"></div></td>
	</tr>
	<div class="btn_box floatR">
	<input  type="submit" value="提交"  onmousemove="this.className='input_move'" onmouseout="this.className='input_out'">
	</div>
	</div>
</form>


<!-- /Popup -->

</body>
</html>