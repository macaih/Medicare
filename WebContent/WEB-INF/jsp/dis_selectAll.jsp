<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	function delete_dis(disease_id) {
	
			 var msg = "您真的确定要删除吗？\n\n请确认！"; 
 		if (confirm(msg)==true){
				location.href = "dis_delete?disease_id="+disease_id;		
  				return true; 
  				
 			}else{ 
 				 return false; 
 			} 
	}
	function update_dis(disease_id) {
		location.href = "dis_update?disease_id="+disease_id;
	}
	
	function select_dis(disease_id) {
		location.href = "dis_selectOne?disease_id="+disease_id;
	}
</script>
<script type="text/javascript">
		function testAjax(){
  			var id = $("#disease_no").val();
			$.ajax({
			//发送数据的请求方式 
			type:"GET",
			url:"dis_getJson.do?disease_no="+id,  
			//是否使用异步 
			async:true,
			success:function(data){
				//定义变量
				var shuju="";
				//循环json数组 
				$.each(data,function(){
						//返回的是集合list里面的东西 就是用 this表示  返回单个就是data.
						shuju+= "<tr><td>"+
						this.disease_id+"</td><td>"+
						this.disease_no+"</td><td>"+
						this.disease_name+"</td><td>"+
						"<button onclick='update_arm("+
						this.disease_id+")' >修改</button> |"+
						"<button onclick='delete_arm("+
						this.disease_id+")' >删除</button> "+
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



		<b style="font-size: 15px;position: relative;top: -20px"> 输入疾病编号：</b> <input type="text"
			id="disease_no" oninput="testAjax()"
			style="height: 30px; width: 150px; font-size: 15px; position: relative; left: 15px;top: -20px;border-radius:10px" border-radius:10px; />



		<div class="form_boxA">
			<p>疾病信息列表</p>
			<table cellpadding="0" cellspacing="0">
				<tr>

					<th>疾病序号</th>
					<th>疾病编号</th>
					<th>疾病名称</th>
					<th>操作</th>
				</tr>

				<tbody id="tb">
					<c:if test="${list!=null}">
						<c:forEach items="${list}" var="list">
							<tr>

								<td>${list.disease_id}</td>
								<td>${list.disease_no}</td>
								<td>${list.disease_name}</td>
								<td>
									<button onclick="update_dis(${list.disease_id})">修改</button> |
									<button onclick="delete_dis(${list.disease_id})">删除</button>
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