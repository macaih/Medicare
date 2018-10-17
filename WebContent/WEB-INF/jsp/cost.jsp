<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + 
			":" + request.getServerPort()
			+ path + "/";
%>   
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>报销明细</title>
</head>
<style type="text/css">
table 
		body {
	font: normal 11px auto "Trebuchet MS", Verdana, Arial, Helvetica,
		sans-serif;
	color: #4f6b72;
	background: #E6EAE9;
}

caption {
	padding: 0 0 5px 0;
	width: 600px;
	font: italic 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
	text-align: right;
}

th {
	font: bold 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
	color: #4f6b72;
	border-right: 1px solid #C1DAD7;
	border-bottom: 1px solid #C1DAD7;
	border-top: 1px solid #C1DAD7;
	letter-spacing: 2px;
	text-transform: uppercase;
	text-align: left;
	padding: 6px 6px 6px 12px;
	background: #CAE8EA no-repeat;
	height: 30px;
}

th.nobg {
	border-top: 0;
	border-left: 0;
	border-right: 1px solid #C1DAD7;
	background: none;
}

td {
	border-right: 1px solid #C1DAD7;
	border-bottom: 1px solid #C1DAD7;
	background: #fff;
	font-size: 11px;
	padding: 6px 6px 6px 12px;
	color: #4f6b72;
}

td.alt {
	background: #F5FAFA;
	color: #797268;
}

th.spec {
	border-left: 1px solid #C1DAD7;
	border-top: 0;
	background: #fff no-repeat;
	font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
}

th.specalt {
	border-left: 1px solid #C1DAD7;
	border-top: 0;
	background: #f5fafa no-repeat;
	font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
	color: #797268;
}
/*---------for IE 5.x bug*/
html>body td {
	font-size: 18px;
}

body, td, th {
	font-family: 宋体, Arial;
	font-size: 18px;
}
</style>
<script>
function back() {
		location.href = "<%=basePath%>head2";	
	}
</script>

<body>
<body style="width: 60%; position: relative; left: 630px; top: 100px;">

	<h3>医疗报销明细</h3>
		<table id="mytable" cellspacing="0"> 
		<caption> </caption> 
		<tr> 
			
		<th scope="col" style="width: 30%;border-top: solid 1px  #C1DAD7; ">姓名</th> 
		
		<td class="row" style="width: 70%;border-top: solid 1px  #C1DAD7;">${userName}</td> 
		</tr> 
		
		<tr> 
		<th scope="col">卡号</th> 
		
		<td class="row">${userNo}</td> 
		</tr> 
		
		<tr> 
		<th scope="col">自费费用</th> 
		
		<td class="row">${zifei}</td> 
		</tr> 
		
		<tr> 
		<th scope="col">报销费用</th> 
		
		<td class="row">${baoxiao}</td> 
		</tr> 
		
		<tr> 
		<th scope="col">实际花费</th> 
		
		<td class="row">${shiji}</td> 
		</tr> 
		</table> 
		
		<button style="font-size:20px;position:relative;left:310px;top:50px;" onclick="back()">返回</button>
</body>


</html>