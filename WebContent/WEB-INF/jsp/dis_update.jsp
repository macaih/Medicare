<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + 
			":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>修改疾病信息</title>
		<link rel="stylesheet" href="css/reset2.css" />
		<link rel="stylesheet" href="css/style2.css" media="screen" type="text/css" />

</head>
<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
<script type="text/javascript">

		function dis_update() {
		var disease_name = $("#disease_name").val();
		var disease_id = $("#disease_id").val();
		var disease_no = $("#disease_no").val();
		if(disease_name==''){
	        alert("不能为空");    
		}
		else
		{
		 location.href ="dis_update1?Disease_id="+disease_id+"&&Disease_no="+disease_no+"&&Disease_name="+disease_name;
		}
	}
</script>
<body>

		<div id="window" style="">
			<div class="page page-front" style="width: 450px;height: 520px;">
				<div class="page-content">
					<form:form method="post" action="dis_update1" modelAttribute="dis">
							<form:hidden path="disease_id"/>
						<div class="input-row">
							<label class="label fadeIn delay2">疾病编号</label>
							<form:input id="disease_no" path="disease_no"   readonly="true" onkeyup="this.value=this.value.replace(/[^_a-zA-Z0-9]/g,'')" onpaste="this.value=this.value.replace(/[^_a-zA-Z0-9]/g,'')" 
							 data-fyll="疾病编号" class="input fadeIn delay3" style="font-size: 19px;"/>
						</div>
						<div class="input-row">
							<label class="label fadeIn delay2">名称</label>
							<form:input  id="disease_name" path="disease_name" data-fyll="疾病名称" class="input fadeIn delay3" style="font-size: 19px;"/>
						</div>

						<div class="input-row perspective">
							<input id="submit" onclick="dis_update()" class="button load-btn fadeIn delay4 ion-arrow-right-b"  type="button" value="确认修改"/> 
      
      <div class="load-state"> 
        <div class="ball"></div> 
        <div class="ball"></div> 
        <div class="ball"></div> 
       </div> </input>
						</div>

					</form:form>
				</div>
			</div>

		</div>
		</div>
		</div>
		</div>

</body>
</html>