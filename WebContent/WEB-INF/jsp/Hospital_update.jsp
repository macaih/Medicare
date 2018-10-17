<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改医疗机构信息</title>
<link rel="stylesheet" href="css/reset2.css" />
<link rel="stylesheet" href="css/style2.css" media="screen"
	type="text/css" />
</head>
<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
	<script type="text/javascript">
		function update_Hospital() {
		var Id = $("#id").val();
		var No = $("#no").val();
		var Level = $("#level").val();
		var Phone = $("#phone").val();
		var Name = $("#name").val();
		if(Phone==''||Level==''||Name==''){
	         alert("您输入的数据不能为空!");  				
 			}
 			else if(Level!=1&&Level!=2&&Level!=3&&Level!=4){
			alert("医院等级必须为1、2、3、4其中之一");
 			}
 			else{ 
				location.href = "Hospital_updateh?hospital_id="+Id+"&&hospital_no="+No+"&&hospital_name="+Name+"&&hospital_level="+Level+"&&hospital_phone="+Phone;					  			
		}
	}
	function update_Hospitala() {
	var Phone = document.getElementById("phone").value.length;
	if(Phone!="11"){
 		alert("请输入11位电话号码");
 	}
	}
function prevent(e) {  
    e.preventDefault ? e.preventDefault() : e.returnValue = false;  
}  
	function digitInput(el, e) {  
    var ee = e || window.event; // FF、Chrome IE下获取事件对象  
    var c = e.charCode || e.keyCode; //FF、Chrome IE下获取键盘码  
 
    var val = el.val();  
    if (c == 110 || c == 190){ // 110 (190) - 小(主)键盘上的点  
        (val.indexOf(".") >= 0 || !val.length) && prevent(e); // 已有小数点或者文本框为空，不允许输入点  
    } else {  
        if ((c != 8 && c != 46 && // 8 - Backspace, 46 - Delete  
            (c < 37 || c > 40) && // 37 (38) (39) (40) - Left (Up) (Right) (Down) Arrow  
            (c < 48 || c > 57) && // 48~57 - 主键盘上的0~9  
            (c < 96 || c > 105)) // 96~105 - 小键盘的0~9  
            || e.shiftKey) {  
            prevent(e); // 阻止事件传播到keypress  
        }  
    }  
}  
$(function(){  
    $("input[name='hospital_phone']").keydown(function(e) {  
        digitInput($(this), e);  
    });  
});
</script>
<body>
	<div id="window" style="">
		<div class="page page-front" style="width: 450px; height: 520px;">
			<div class="page-content">
				<form:form method="post" action="Hospital_updateh"
					modelAttribute="hospital" id="hu">
					<!-- 主键 隐藏不显示 -->
					<form:hidden id="id" path="hospital_id" />
					<span id="ck"></span>
					<div class="input-row">
						<label class="label fadeIn delay2">医疗机构编号</label>
						<form:input id="no" path="hospital_no" readonly="true" data-fyll="医疗机构编号"
							class="input fadeIn delay3" style="font-size: 19px;" />
					</div>
					<tr>
						<th id="ck" style="color: red"></th>
					</tr>
					<div class="input-row">
						<label class="label fadeIn delay2">医疗机构名称</label>
						<form:input id="name" path="hospital_name" data-fyll="医疗机构名称"
							class="input fadeIn delay3" style="font-size: 19px;" />
					</div>
					<div class="input-row">
						<label class="label fadeIn delay2">医疗机构等级</label>
						<form:input id="level"  path="hospital_level" data-fyll="医疗机构等级"
							class="input fadeIn delay3" style="font-size: 19px;" />
					</div>
					<div class="input-row">
						<label class="label fadeIn delay2">医疗机构电话</label>
						<form:input id="phone" name="hphone" type="value" onblur="update_Hospitala()" path="hospital_phone" data-fyll="医疗机构电话"
							class="input fadeIn delay3" style="font-size: 19px;" />
					</div>
					<div class="input-row perspective">
						<input id="submit" onclick="update_Hospital()"
							class="button load-btn fadeIn delay4 ion-arrow-right-b"
							type="button" value="修改" />
						<div class="load-state">
							<div class="ball"></div>
							<div class="ball"></div>
							<div class="ball"></div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>