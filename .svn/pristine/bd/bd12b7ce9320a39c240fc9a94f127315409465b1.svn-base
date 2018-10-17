<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>修改药物信息</title>
<link rel="stylesheet" href="css/reset2.css" />
<link rel="stylesheet" href="css/style2.css" media="screen"
	type="text/css" />
</head>
<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
		function update_Drugs() {
		var Id = $("#id").val();
		var No = $("#no").val();
		var Price = $("#price").val();
		var Type = $("#type").val();
		var Name = $("#name").val();
		
		if(Price==''||Type==''||Name==''){
	         alert("您输入的数据不能为空!");  				
 			}
 			else if(Type!='甲'&&Type!='乙'&&Type!='丙'){
			alert("药品类别必须为甲、乙、丙其中之一");
 			}
 			else{ 
				location.href = "Drugs_updated?drugs_id="+Id+"&&drugs_no="+No+"&&drugs_name="+Name+"&&drugs_type="+Type+"&&drugs_price="+Price;					  			
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
    $("input[name='drugs_price']").keydown(function(e) {  
        digitInput($(this), e);  
    });  
});
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
		<div class="page page-front" style="width: 450px; height: 520px;">
			<div class="page-content">
				<form:form method="post" action="Drugs_upadted"
					modelAttribute="drugs"  id="upnul">
					<!-- 主键 隐藏不显示 -->
					<form:hidden id="id" path="drugs_id" />
					<div class="input-row">
						<label class="label fadeIn delay2">药品编号</label>
						<form:input id="no" path="drugs_no" readonly="true" data-fyll="药品编号"
							class="input fadeIn delay3" style="font-size: 19px;" />
					</div>
					<div class="input-row">
						<label class="label fadeIn delay2">药品名称</label>
						<form:input id="name" path="drugs_name" data-fyll="药品名称"
							class="input fadeIn delay3" style="font-size: 19px;" />
					</div>
					<div class="input-row">
						<label class="label fadeIn delay2">药品类别</label>
						<form:input id="type" path="drugs_type" data-fyll="药品类别"
							class="input fadeIn delay3" style="font-size: 19px;" />
					</div>
					<div class="input-row">
						<label class="label fadeIn delay2">药品价格</label>
						<form:input id="price" path="drugs_price" data-fyll="药品价格" onkeyup="clearNoNum(this)"
							class="input fadeIn delay3" style="font-size: 19px;" />
					</div>
					<div class="input-row perspective">
						<input id="submit" onclick="update_Drugs()"
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