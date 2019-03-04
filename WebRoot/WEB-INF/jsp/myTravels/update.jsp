<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
 
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
<title>travelsShow</title>
<link href="css3/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css3/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Roboto+Slab:300,700,100,400' rel='stylesheet' type='text/css'>
<!-- js -->
<script src="js3/jquery.min.js"></script>
<!-- //js -->
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Eco Travel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js3/move-top.js"></script>
<script type="text/javascript" src="js3/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<!-- pop-up -->
<link rel="stylesheet" href="css/touchTouch.css" type="text/css" media="all" />
<script type="text/javascript" src="js3/jquery.fancybox.js"></script>
	   <script type="text/javascript">
			$(document).ready(function() {
				/*
				 *  Simple image gallery. Uses default settings
				 */

				$('.fancybox').fancybox();

			});
		</script>
	
	<style type="text/css">
	
		#no1{
			margin: 0 auto;
    		width:1140px;
    		height: 1150px;	
    		background:url(images/ta001.png) no-repeat ;;
		}
		
	
		#header-top input[type="text"]{
			outline:none;
			background:#9cc303;
		
			border-color:green;
			color:#fff;
			font-size:15px;
			text-align:center;
			border-radius: 5px;
 		 	-webkit-border-radius: 5px;
 		 	-moz-border-radius: 5px;
  			-o-border-radius: 5px;
  			-ms-border-radius: 5px;
		}
		#no3{
			width:950px;
			height:70px;
			background-color:#EFEDE1;
			margin-left: auto;
			margin-right: auto;
			padding-top:18px;
			font-family: 华文行楷;
			font-size: 35px;
		}
		
	
	
		.zhou{
			width:162px;
			height:50px;
			text-align: center;
			float: left;
			background-color: gray;
		}
		


		
	
	
		.submit_3{
	border-style:none;
   	padding:8px 30px;
    line-height:24px;
    width:162px;   
    height:50px; 
    color:#fff;
    font:16px "Microsoft YaHei", Verdana, Geneva, sans-serif;
    cursor:pointer;
    border:1px #FFF solid;
    -webkit-box-shadow:inset 0px 0px 1px #fff;
    -moz-box-shadow:inset 0px 0px 1px #fff;
    box-shadow:inset 0px 0px 1px #fff;/*内发光效果*/
    -webkit-border-radius:4px;
    -moz-border-radius:4px;
    border-radius:4px;/*边框圆角*/
    text-shadow:1px 1px 0px #b67f01;/*字体阴影效果*/
    background-color:#729D68;
  
		}
		
		.submit_4{
	border-style:none;
   	padding:8px 30px;
    line-height:24px;
    width:162px;   
    height:50px; 
    color:gray;
    font:16px "Microsoft YaHei", Verdana, Geneva, sans-serif;
    cursor:pointer;
    border:1px #729D68 solid;
    -webkit-box-shadow:inset 0px 0px 1px #fff;
    -moz-box-shadow:inset 0px 0px 1px #fff;
    box-shadow:inset 0px 0px 1px #fff;/*内发光效果*/
    -webkit-border-radius:4px;
    -moz-border-radius:4px;
    border-radius:4px;/*边框圆角*/
    text-shadow:1px 1px 0px #fff;/*字体阴影效果*/
    background-color:#fff;
  
		}
		
		
		
		#gallery{
	padding:2em 0;
	background:#fff;
		}
		
		h3{
			text-align: center;
		}
		
		#flexiselDemo1{
			background-color: #fff;
		}
		.sliderfig {
	 			 padding: 0em 0em;
				background-color: #fff;
	}
		#noa1{
		
			margin: 0 auto;
    		width:900px;
    		height:1100px;
    		
		}
		
		td{
			padding-left: 15px;
		}
		
		.inp{
			width: 260px;
			height:55px;
			background:transparent;
			border:1px dotted #ffffff;
			font-size: 23px;
		}
		
		
	</style>
	
  </head>
  
  <body>
  	<div class="banner-with-text1">
	<div class="container">
<!-- header -->	
		<div class="header">
			
			<div class="clearfix"> </div>
			<div class="header-bottom">
				
	
				<div class="header-bottom-left">
					<a href="index.html">Eco<span>travel</span></a>
				</div>
				<div class="header-bottom-right">
					<span class="menu">MENU</span>
					<ul class="nav1">
						<li><a href="index.jsp">目的地</a></li>
						<li><a href="">景点</a></li>
						<li><a href="hotelManager/toList.do">酒店</a></li>
						<li><a href=" ">美食</a></li>
						<li class="cap"><a href="myTravels/toList.do">游记</a></li>
						<li><a href="">指南</a></li>
						<li><a href="">攻略</a></li>
						<li><div id="header-top">
							<form action="">
								<input type="text" placeholder="Search" required=" " align="left">
								
							</form>
							</div>
						</li>
					</ul>
					<!-- script for menu -->
						<script> 
							$( "span.menu" ).click(function() {
							$( "ul.nav1" ).slideToggle( 300, function() {
							 // Animation complete.
							});
							});
						</script>
					<!-- //script for menu -->
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>	
	</div>
	</div>
<!-- //header -->
<!-- gallery -->

<div class="banner-bdy gal">
   <div class="container">

	
	
	
		<div id="no1">
		<br>&nbsp;<br>
		<p align="center" style="font-size: 35px;color: #fff;">发布我的个性游记</p><br>
			<div id="noa1">
    		<form id="formAdd" action="myTravels/update.do" enctype="multipart/form-data" method="post">
    		<table border="0" width="100%">
    			<tr>
    				<input type="hidden" name="id" value="${mts.id}"/>
    				<td width="50%"><font style="font-size: 20px" color="#fff" >标&nbsp;&nbsp;&nbsp;&nbsp;题&nbsp;&nbsp;</font><input type="text" name="name" value="${mts.name}"style="width: 260px;height:60px;background:transparent;border:1px dotted #ffffff;font-size: 25px;color: #fff"></td>
    				<td width="50%" rowspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/ta02.png"> </td>
    			</tr>
    			<tr>
    				<td width="50%"><font style="font-size: 20px" color="#fff" >旅游天数 &nbsp;</font><input style="width: 260px;height:60px;background:transparent;border:1px dotted #ffffff;font-size: 23px;color: #fff" type="text" name="days" value="${mts.days}"></td>
    				
    			</tr><tr>
    				<td width="50%"><font style="font-size: 20px" color="#000" >旅游足迹&nbsp;&nbsp;</font><input class="inp" type="text" name="way" value="${mts.way}"></td>
    			</tr>

    			<tr>
    				<td width="50%"><font style="font-size: 20px" color="#000" >旅游城市&nbsp;&nbsp;</font><input class="inp" type="text" name="address" value="${mts.address}"></td>
    				<td width=“50%>&nbsp;&nbsp; <input  type="file" name="pictureFile" > </td>
    			</tr>    			
				<tr>
    				<td width="40%"><img src="images/ta03.png"></td>   			
    				<td width=“60% align="center"><font style="font-size: 20px" color="#000" >具体游记<br></font> <textarea cols="50" rows="16" name="describe" value="">${mts.describe}</textarea></td>
    			</tr>
    			<tr>
    				<td width="50%"></td>
    				<td width="50%"> <font size="35px">&nbsp;</font> </td>
    			</tr>
    			<tr>
    				<td width="50%"></td>
    				<td width="50%"><font size="35px">&nbsp;</font> </td>
    			</tr> 
    			<tr>
    				<td width="50%" style="text-align: right;"><input class="submit_3" type="submit" value="上传游记" > </td>
    				<td width="50%"><input class="submit_4" type="button"  onclick="quxiao()" value="取消" > </td>
    			</tr> 
    		</table>
    		</form>
    		
    		<script type="text/javascript">
    			function quxiao(){
    				window.location.href="myTravels/toList.do"
    				
    			}
    		
    		</script>
   		 	</div>
		</div>
		
		
	</div>
	</div>
	
<!-- //gallery -->
<!-- footer -->
	<div class="footer-top">
	<div class="container">
		<div class="footer-top-grids">
			<div class="col-md-4 footer-top-grid">
				<h3>关于旅游网</h3>
				<p>"At vero eos et accusamus et iusto odio dignissimos ducimus 
				qui blanditiis praesentium voluptatum deleniti atque corrupti quos 
				dolores et quas molestias excepturi sint occaecati cupiditate non 
				provident, similique sunt in culpa qui officia deserunt mollitia animi, 
				id est laborum et dolorum fuga. </p>
				<div class="read1">
					<a href="single.html">Read More</a>
				</div>
			</div>
			<div class="col-md-4 footer-top-grid">
				<h3>联系我们</h3>
				<div class="twi-txt">
					<div class="twi">
						<a href="#" class="twitter"></a>
					</div>
					<div class="twi-text">
						<p><a href="#">Follow Us On Twitter</a></p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="twi-txt1">
					<div class="twi">
						<a href="#" class="flickr"> </a>
					</div>
					<div class="twi-text">
						<p><a href="#">Check Us Out On Flickr</a></p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="twi-txt1">
					<div class="twi">
						<a href="#" class="facebook"> </a>
					</div>
					<div class="twi-text">
						<p><a href="#">Become a Fan On Facebook</a></p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-4 footer-top-grid">
				<h3>其他功能</h3>
				<ul class="last">
					<li><a href="#">Temporibus autem quibusdam</a></li>
					<li><a href="#">Et aut officiis debitis aut</a></li>
					<li><a href="#">Necessitatibus saepe eveniet</a></li>
					<li><a href="#">Ut et voluptates repudiandae</a></li>
					<li><a href="#">Molestiae non recusandae earum</a></li> 
					<li><a href="#">Rerum hic tenetur a sapiente delectus</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
		</div>
		<div class="footer">
			<p>Copyright &copy; 2016.Company name All rights <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">旅游网</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">驴友之家</a></p>
		</div>
	</div>
<!-- //footer -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>
  	
  </body>
</html>
