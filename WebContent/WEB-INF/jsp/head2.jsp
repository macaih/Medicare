<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>医疗保险中心</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta charset="UTF-8" />
<link rel="stylesheet" href="css/responsiveslides.css">
<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/responsiveslides.min.js"></script>
<script>
		  	function prevent(e) {  
    e.preventDefault ? e.preventDefault() : e.returnValue = false;  
}  
function digitInput(el, e) {  
    var ee = e || window.event; // FF、Chrome IE下获取事件对象  
    var c = e.charCode || e.keyCode; //FF、Chrome IE下获取键盘码  
    //var txt = $('label').text();  
    //$('label').text(txt + ' ' + c);  
    var val = el.val();  
    if (c == 110 || c == 190){ // 110 (190) - 小(主)键盘上的点  
        (val.indexOf(".") >= 0 || !val.length) && prevent(e); // 已有小数点或者文本框为空，不允许输入点  
    } else {  
        if ((c != 8 && c != 46 && // 8 - Backspace, 46 - Delete  
            (c < 37 || c > 40) && // 37 (38) (39) (40) - Left (Up) (Right) (Down) Arrow  
            (c < 48 || c > 57) && // 48~57 - 主键盘上的0~9  
            (c < 96 || c > 105)) // 96~105 - 小键盘的0~9  
            || e.shiftKey) { // Shift键，对应的code为16  
            prevent(e); // 阻止事件传播到keypress  
        }  
    }  
}  
$(function(){  
    $("input[name='userNo']").keydown(function(e) {  
        digitInput($(this), e);  
    });  
});  
		    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 2500,
			        speed: 600
			      });
			});
			
				function unluser() {
					var No = $("#no").val();
					if (No == '') {
						alert("请输入卡号");
						location.href = "<%=basePath%>head2";
					}
					else{
					$("#sub").submit();
					}
				}
			
		  </script>
</head>
<style>
.index_form input {
	width: 250px;
	height: 42px;
	margin-top: 50px;
	border-radius: 5px;
}


</style>


<body>
	<!---start-wrap---->

	<!---start-header---->
	<div class="header">
		<div class="top-header">
			<div class="wrap">
				<div class="top-header-left"></div>
				<div class="right-left">
					<ul>
						<li class="login"><a href="login.html" target="">登录</a></li>

					</ul>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<div class="main-header">
			<div class="wrap">
				<div class="logo">
					<a href="head2"><img src="img/logo.png" title="logo" /></a>
				</div>
				<div class="social-links">
					<ul>
						<li><a href="head2"><img src="img/facebook.png"
								title="facebook" /></a></li>
						<li><a href="head2"><img src="img/twitter.png"
								title="twitter" /></a></li>
						<li><a href="head2"><img src="img/feed.png" title="Rss" /></a></li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<div class="clear"></div>
		<div class="top-nav">
			<div class="wrap">
				<ul>
					<li class="active"><a href="head2">Home</a></li>
					<li><a href="head2">About</a></li>
					<li><a href="head2">Services</a></li>
					<li><a href="head2">News</a></li>
					<li><a href="head2">Contact</a></li>
					<div class="clear"></div>
				</ul>
			</div>
		</div>
	</div>
	<!---End-header---->
	<!---start-images-slider---->
	<div class="image-slider">
		<ul class="rslides rslides1" id="slider1" style="max-width: 2500px;">
			<li id="rslides1_s2" class="rslides1_on"
				style="float: left; position: relative; opacity: 1; z-index: 2; display: list-item; -webkit-transition: opacity 600ms ease-in-out; transition: opacity 600ms ease-in-out;"><img
				src="img/slider2.png" alt="">
				<div class="slider-info">
					<p>柳州医疗保险中心</p>
					<script type="text/javascript">
                             	 	function tttt(){
                             	 		var a = document.getElementById("inputs").value;
                             	 		a.replace(/[^\d]/g,'');
                             	 	}
                             	 	
                       			 	function sub(){
                             	 		$("#sub").submit();
                             	 	} 
                    </script>
					<form name="input" action="calculation" method="post"
						class="index_form" id="sub">
						<div style="position: relative; left: -13%">
							<b style="font-size: 20px;">请输入卡号: </b><input type="text"
								name="userNo" id="no" style="font-size: 20px; " placeholder="请输入数字" />
							<a onclick="unluser()" onclick="sub()" class="chaxun">查询</a>
						</div><span style="color:red;font-size:20px;position: relative;left: 140px;top: -45px">${msg}</span>
					</form>
				</div></li>
		</ul>
	</div>

	<div class="copyright pull-right" style="height: 50px;">

		<i style="position: relative; left: 43%; top: 70%;">@版权属于医院保险项目所有</i>

	</div>


</body>

</html>