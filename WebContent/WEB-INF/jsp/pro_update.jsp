<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	  <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + 
			":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>修改诊疗项目信息</title>
		<link rel="stylesheet" href="css/reset2.css" />
		<link rel="stylesheet" href="css/style2.css" media="screen" type="text/css" />

</head>
<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
	<script type="text/javascript">
	function update_pro(){
	var Id=$("#id").val();
	var No=$("#no").val();
	var Name=$("#name").val();
	var Level=$("#level").val();
	if(No==''||Level==''||Name==''){
	var msg = "您输入的数据不能为空!是否重新修改？";
	    if(confirm(msg)==true){
	    return false;
	    }else{
	    location.href = "pro_selectAll";
	    return true;
	    }
	    }
	    else{
	    if(Level!=1&&Level!=2&&Level!=3&&Level!=4){
	    var msg = "项目等级必须为1-4!是否重新修改？\n\n请确认！";
	    if (confirm(msg)==true){	
  				return false; 
	    }else{
	    location.href = "pro_selectAll";
	    return true;
	    }
	    }
	    location.href = "pro_update1?project_id="+Id+"&&project_no="+No+"&&project_name="+Name+"&&project_level="+Level;
	}
	
	}
	</script>
<body>

		<div id="window" style="">
			<div class="page page-front" style="width: 450px;height: 520px;">
				<div class="page-content">
					<form:form method="post" action="pro_update1" modelAttribute="pro">
							<form:hidden id="id" path="project_id"/>
						<div class="input-row">
							<label class="label fadeIn delay2">诊疗项目编号</label>
							<form:input id="no" path="project_no"  data-fyll="诊疗项目编号" class="input fadeIn delay3" style="font-size: 19px;"/>
						</div>
						<div class="input-row">
							<label class="label fadeIn delay2">诊疗项目名称</label>
							<form:input id="name" path="project_name" data-fyll="诊疗项目名称" class="input fadeIn delay3" style="font-size: 19px;"/>
						</div>
						<div class="input-row">
							<label class="label fadeIn delay2">诊疗项目等级</label>
							<form:input id="level" path="project_level" data-fyll="诊疗项目等级" class="input fadeIn delay3" style="font-size: 19px;"/>
						</div>

						<div class="input-row perspective">
							<input  onclick="update_pro()" class="button load-btn fadeIn delay4 ion-arrow-right-b"  type="button" value="确认修改" /> 
      
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