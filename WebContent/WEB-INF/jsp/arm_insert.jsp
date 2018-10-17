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
<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0;">
<link href="css/haiersoft.css" rel="stylesheet" type="text/css" media="screen,print" />
<link href="css/print.css" rel="stylesheet" type="text/css"  media="print" />
<script src="js/jquery-1.10.1.min.js"></script>
<script src="js/side.js" type="text/javascript"></script>

<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
</head>



<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
	function selectAll() {
		location.href = "<%=basePath%>arm_selectAll";
		
	}
		function selecttest() {
		location.href = "<%=basePath%>arm_stest";
		
	}
	function selectOne() {
		location.href = "<%=basePath%>arm_selectOne";
		
	}
		function arm_insert() {
		var Price = $("#price").val();
		var No = $("#no").val();
		var Name = $("#name").val();
		if(Price==''||No==''||Name==''){
	         alert("不能为空");
	         location.href = "<%=basePath%>arm_insert";
		}
		else{
		if(armariumPrice<=0){alert("价格数据有误");}
		location.href = "<%=basePath%>arm_insert";
		}
	}
	
	function checkarm_no(){
	var no=$("#no").val();
	/*  alert(no);  */
	$.ajax({
	type:"GET",
	url:"checkarm_no?armariumNo="+no,
	async:true,
	success:function(data){
		var check="设施编号重复！";
		var check1="";
		if(data!=''){
		$("#ck").html(check);
		}else{
		$("#ck").html('');
		}
	}
	});
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
<form action="arm_insert1" method="post">
<div class="form_boxC">
<p>"<span class="f_cB">*</span>"号为必填项目</p>
<div id="BtmBtn">

<table cellpadding="0" cellspacing="0">	
<tr>
<th width="120">医疗设施编号 <span class="f_cB">*</span></th>
<td><div class="txtbox floatL" style="width:200px;"><input id="no"  oninput="checkarm_no()" name="armariumNo" onkeyup="clearNoNum(this)"  type="text" size="5" value="" style="width: 180px;height: 35px;"></div></td><th id="ck"></th>
</tr>
<tr>
<th>名称 <span class="f_cB">*</span></th>
<td><div class="txtbox floatL" style="width:200px;"><input id="name" name="armariumName"  type="text" size="5" value="" style="width: 180px;" onkeyup="this.value=this.value.replace(/(^\s+)|(\s+$)/g,'');"></div></td>
</tr>
<tr>
<th>价格<span class="f_cB">*</span></th>
<td><div class="txtbox floatL" style="width:200px;"><input id="price" name="armariumPrice" 
									onkeyup="clearNoNum(this)" type="text" size="5" value="" style="width: 180px;"></div></td>
	</div></td>
							<td>
							
								<div style="position: relative; left:1000px; top:-200px">
									<div class="btn_boxB floatR mag_l20">
										<input onclick="selectAll()" name="" type="button" value="取消"
											onmousemove="this.className='input_move'"
											onmouseout="this.className='input_out' ">
									</div>
									<div class="btn_box floatR">
										<input onclick="arm_insert()" name="" type="submit" value="提交"
											onmousemove="this.className='input_move'"
											onmouseout="this.className='input_out'">
									</div>
								</div>
							</td>

</tr>


</div>
<!-- /selectbox --></td>
</tr>


</tr>


</div>
<div id="BtmBtn" style="height:10px ">
							
</div>
</div>

</form>

<!-- /Popup -->

</body>
</html>