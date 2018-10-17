<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
		<title>修改医疗设施信息</title>
		<link rel="stylesheet" href="css/reset2.css" />
		<link rel="stylesheet" href="css/style2.css" media="screen" type="text/css" />

</head>
<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
		function arm_update() {
		var Id = $("#id").val();
		var Price = $("#price").val();
		var No = $("#no").val();
		var Name = $("#name").val();
		if(Price==''||No==''||Name==''){
	         var msg = "您输入数据不能为空!是否重新修改？"; 
	          if (confirm(msg)==true){		          					
  							return false;   				
 			}else{ 
 					location.href = "arm_selectAll";
 				 return true; 
 			} 
		}
		else{
		if(Price<=0){
			var msg = "您输入数据有误!是否重新修改？\n\n请确认！"; 
		 		if (confirm(msg)==true){	
  				return false; 
  				
 			}else{ 
 			location.href = "arm_selectAll";
 				 return true; 
 			} 
		}
		location.href = "arm_update1?armariumId="+Id+"&&armariumNo="+No+"&&armariumName="+Name+"&&armariumPrice="+Price;					  			
		}
	}
</script>
<script language="JavaScript" type="text/javascript"> 
function clearNoNum(obj){ 
    obj.value = obj.value.replace(/[^\d.]/g,"");  //清除“数字”和“.”以外的字符  
    obj.value = obj.value.replace(/\.{2,}/g,"."); //只保留第一个. 清除多余的  
    obj.value = obj.value.replace(".","$#$").replace(/\./g,"").replace("$#$","."); 
    obj.value = obj.value.replace(/^(\-)*(\d+)\.(\d\d).*$/,'$1$2.$3');//只能输入两个小数  
    if(obj.value.indexOf(".")< 0 && obj.value !=""){//以上已经过滤，此处控制的是如果没有小数点，首位不能为类似于 01、02的金额 
        obj.value= parseFloat(obj.value); 
    } 
} 
</script> 
<body>

		<div id="window" style="">
			<div class="page page-front" style="width: 450px;height: 520px;">
				<div class="page-content">
					<form:form method="post" action="arm_update1" modelAttribute="arm">
							<form:hidden id="id" path="armariumId"/>
						<div class="input-row">
							<label class="label fadeIn delay2">医疗设施编号</label>
							<form:input id="no" path="armariumNo" readonly="true" data-fyll="医疗设施编号" class="input fadeIn delay3" style="font-size: 19px;"/>
						</div>
						<div class="input-row">
							<label class="label fadeIn delay2">名称</label>
							<form:input id="name" path="armariumName" data-fyll="名称" class="input fadeIn delay3" style="font-size: 19px;"/>
						</div>
						<div class="input-row">
							<label class="label fadeIn delay2">价格</label>
							<form:input id="price" name="armariumPrice" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')"
									onpaste="this.value=this.value.replace(/[^0-9]/g,'')" path="armariumPrice" data-fyll="价格" class="input fadeIn delay3" style="font-size: 19px;"/>
						</div>

						<div class="input-row perspective">

							<input id="ckup" onclick="arm_update()" class="button load-btn fadeIn delay4 ion-arrow-right-b"  type="button" value="确认修改"/> 

      
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