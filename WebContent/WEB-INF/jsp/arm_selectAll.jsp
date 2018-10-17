<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
.index_form input {
	font-size: 20px;
	width: 200px;
	height: 40px;
	border-radius: 5px;
	font-size: 18px;
}
</style>

<script type="text/javascript">
	function delete_arm(armariumId) {
	 var msg = "您真的确定要删除吗？\n\n请确认！"; 
 		if (confirm(msg)==true){
				location.href = "arm_delete?armariumId="+armariumId;		
  				return true; 
  				
 			}else{ 
 				 return false; 
 			} 	
		
	}
	function update_arm(armariumId) {
		location.href = "arm_update?armariumId="+armariumId;
	}
	function selectOne() {
		location.href = "<%=basePath%>arm_selectOne";
	}
</script>
<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
		function testAjax(){
  			var id = $("#armariumNo").val();
			$.ajax({
			//发送数据的请求方式 
			type:"GET",
			url:"arm_getJson?armariumNo="+id,
			//是否使用异步 
			async:true,
			success:function(data){
				//定义变量
				var shuju="";
				//循环json数组 
				$.each(data,function(){
						//返回的是集合list里面的东西 就是用 this表示  返回单个就是data.
						shuju+= "<tr><td>"+
						this.armariumNo+"</td><td>"+
						this.armariumName+"</td><td>"+
						this.armariumPrice+"</td><td>"+
						"<button onclick='update_arm("+
						this.armariumId+")' >修改</button> |"+
						"<button onclick='delete_arm("+
						this.armariumId+")' >删除</button> "+
						"</td></tr>";
				}) ;
				//获得标签元素   并且往标签添加 数据 
				$("#tb").html(shuju);
								}
					       });
	}  
</script>



<body>
	<!-- MainForm -->
<div style="position: relative; top: 50px;">



			<b style="font-size: 15px;position: relative;top: -20px"> 请输入医疗设施编号：</b> <input type="text"
				id="armariumNo" oninput="testAjax()"
				style="height: 30px; width: 150px; font-size: 15px; position: relative; left: 10px;top:-20px; border-radius: 5px;" />

		<div class="form_boxA">
			<p>医疗设施信息列表</p>
			<table cellpadding="0" cellspacing="0">
				<tr>
					<th>设施编号</th>
					<th>名称</th>
					<th>价格</th>
					<th>操作</th>
				</tr>

				<tbody id="tb">
					<c:if test="${list!=null}">
						<c:forEach items="${list}" var="list">
							<tr>
								<td>${list.armariumNo}</td>
								<td>${list.armariumName}</td>
								<td>${list.armariumPrice}</td>
								<td>
									<button onclick="update_arm(${list.armariumId})">修改</button> |
									<button onclick="delete_arm(${list.armariumId})">删除</button>
								</td>
							</tr>
						</c:forEach>
					</c:if>
				<tbody>
			</table>
		</div>
	</div>
	<!-- /MainForm -->
</body>
</html>