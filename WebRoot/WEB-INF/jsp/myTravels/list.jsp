<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<html>
<head>
    <base href="<%=basePath%>">
<title>travlesList</title>
<link href="css3/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css3/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Roboto+Slab:300,700,100,400' rel='stylesheet' type='text/css'>
<!-- js -->
<script src="js/jquery.min.js"></script>
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
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
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
<link rel="stylesheet" href="css3/touchTouch.css" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery.fancybox.js"></script>
	   <script type="text/javascript">
			$(document).ready(function() {
				/*
				 *  Simple image gallery. Uses default settings
				 */

				$('.fancybox').fancybox();

			});
		</script>
		<script type="text/javascript">		
 		function ck(num){
 		document.getElementById("myFormShow"+num).submit();
 		}
 		
 		//文本狂弹出
 		 function yz() { 
            var t = document.getElementById("goodsname1"); 
            var x = t.offsetLeft; 
            var y = t.offsetTop; 
            var w = t.offsetWidth; 
            var h = t.offsetHeight; 
            var show = document.getElementById("s_goodsname1"); 
            show.style.position = "absolute"; 
            show.style.left = x; 
            show.style.top = y + h; 
            show.style.width = 2*w; 
            show.style.display = "block" 
        } 
         function yz1() { 
            var t = document.getElementById("goodsname1"); 
         
            var show = document.getElementById("s_goodsname1"); 
            show.style.position = "absolute"; 
            show.style.left = 0; 
            show.style.top =0; 
            show.style.width = 0; 
            show.style.display = "none" 
        } 
        
         function oz() { 
            var t = document.getElementById("goodsname2"); 
            var x = t.offsetLeft; 
            var y = t.offsetTop; 
            var w = t.offsetWidth; 
            var h = t.offsetHeight; 
            var show = document.getElementById("s_goodsname2"); 
            show.style.position = "absolute"; 
            show.style.left = x; 
            show.style.top = y + h; 
            show.style.width = 2*w; 
            show.style.display = "block" 
        } 
         function oz1() { 
            var t = document.getElementById("goodsname2"); 
         
            var show = document.getElementById("s_goodsname2"); 
            show.style.position = "absolute"; 
            show.style.left = 0; 
            show.style.top =0; 
            show.style.width = 0; 
            show.style.display = "none" 
        } 
        
         function bmz() { 
            var t = document.getElementById("goodsname3"); 
            var x = t.offsetLeft; 
            var y = t.offsetTop; 
            var w = t.offsetWidth; 
            var h = t.offsetHeight; 
            var show = document.getElementById("s_goodsname3"); 
            show.style.position = "absolute"; 
            show.style.left = x; 
            show.style.top = y + h; 
            show.style.width = 2*w; 
            show.style.display = "block" 
        } 
         function bmz1() { 
            var t = document.getElementById("goodsname3"); 
         
            var show = document.getElementById("s_goodsname3"); 
            show.style.position = "absolute"; 
            show.style.left = 0; 
            show.style.top =0; 
            show.style.width = 0; 
            show.style.display = "none" 
        } 
        
         function nmz() { 
            var t = document.getElementById("goodsname4"); 
            var x = t.offsetLeft; 
            var y = t.offsetTop; 
            var w = t.offsetWidth; 
            var h = t.offsetHeight; 
            var show = document.getElementById("s_goodsname4"); 
            show.style.position = "absolute"; 
            show.style.left = x; 
            show.style.top = y + h; 
            show.style.width = 2*w; 
            show.style.display = "block" 
        } 
         function nmz1() { 
            var t = document.getElementById("goodsname4"); 
         
            var show = document.getElementById("s_goodsname4"); 
            show.style.position = "absolute"; 
            show.style.left = 0; 
            show.style.top =0; 
            show.style.width = 0; 
            show.style.display = "none" 
        } 
        
         function fz() { 
            var t = document.getElementById("goodsname5"); 
            var x = t.offsetLeft; 
            var y = t.offsetTop; 
            var w = t.offsetWidth; 
            var h = t.offsetHeight; 
            var show = document.getElementById("s_goodsname5"); 
            show.style.position = "absolute"; 
            show.style.left = x; 
            show.style.top = y + h; 
            show.style.width = 2*w; 
            show.style.display = "block" 
        } 
         function fz1() { 
            var t = document.getElementById("goodsname5"); 
         
            var show = document.getElementById("s_goodsname5"); 
            show.style.position = "absolute"; 
            show.style.left = 0; 
            show.style.top =0; 
            show.style.width = 0; 
            show.style.display = "none" 
        } 
        
         function dyz() { 
            var t = document.getElementById("goodsname6"); 
            var x = t.offsetLeft; 
            var y = t.offsetTop; 
            var w = t.offsetWidth; 
            var h = t.offsetHeight; 
            var show = document.getElementById("s_goodsname6"); 
            show.style.position = "absolute"; 
            show.style.left = x; 
            show.style.top = y + h; 
            show.style.width = 2*w; 
            show.style.display = "block" 
        } 
         function dyz1() { 
            var t = document.getElementById("goodsname6"); 
         
            var show = document.getElementById("s_goodsname6"); 
            show.style.position = "absolute"; 
            show.style.left = 0; 
            show.style.top =0; 
            show.style.width = 0; 
            show.style.display = "none" 
        } 
        
         function njz() { 
            var t = document.getElementById("goodsname7"); 
            var x = t.offsetLeft; 
            var y = t.offsetTop; 
            var w = t.offsetWidth; 
            var h = t.offsetHeight; 
            var show = document.getElementById("s_goodsname7"); 
            show.style.position = "absolute"; 
            show.style.left = x; 
            show.style.top = y + h; 
            show.style.width = 2*w; 
            show.style.display = "block" 
        } 
         function njz1() { 
            var t = document.getElementById("goodsname7"); 
         
            var show = document.getElementById("s_goodsname7"); 
            show.style.position = "absolute"; 
            show.style.left = 0; 
            show.style.top =0; 
            show.style.width = 0; 
            show.style.display = "none" 
        } 
	</script>
	
	<style type="text/css">
	
		#no1{
			margin: 0 auto;
    		width:1000px;
    	
    		
		}
		
		#no11{
			margin:0 auto;
    		width:1000px;
    		height:120px;
    		text-align: center;
    		padding-top: 50px;
		}
		
		#no2{
			width:300px;
			height:305px;
			background-color: #D9EBB1;
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
			background: url(images/t01.jpg) no-repeat ;
			background-size: cover;
			-webkit-background-size: cover;
			-moz-background-size: cover;
			-o-background-size: cover;
			-ms-background-size: cover;
			min-height:200px;
		}
		.no4{
			width:50px;
			height:100px;
			background-color: red;
		}
		.no41{
			width:50px;
			height:130px;
			background-color: gray;
			float: left;
		}
		.zhou{
			width:162px;
			height:50px;
			text-align: center;
			float: left;
			background-color: gray;
		}
		


		
	
		#submit_1{
        	 width:237px;   
         	 height:81px;   
        	 background:url(images/bt01.png) no-repeat center;   
        	 cursor:pointer;  
        	 
   
		}
		
		
		#submit_2{
	border-style:none;
   	padding:8px 30px;
    line-height:24px;
    width:200px;   
    height:45px; 
    color:#fff;
    font:16px "Microsoft YaHei", Verdana, Geneva, sans-serif;
    cursor:pointer;
    border:1px #589442 solid;
    -webkit-box-shadow:inset 0px 0px 1px #fff;
    -moz-box-shadow:inset 0px 0px 1px #fff;
    box-shadow:inset 0px 0px 1px #fff;/*内发光效果*/
    -webkit-border-radius:4px;
    -moz-border-radius:4px;
    border-radius:4px;/*边框圆角*/
    text-shadow:1px 1px 0px #b67f01;/*字体阴影效果*/
    background-color:#589442;
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
    border:1px #589442 solid;
    -webkit-box-shadow:inset 0px 0px 1px #fff;
    -moz-box-shadow:inset 0px 0px 1px #fff;
    box-shadow:inset 0px 0px 1px #fff;/*内发光效果*/
    -webkit-border-radius:4px;
    -moz-border-radius:4px;
    border-radius:4px;/*边框圆角*/
    text-shadow:1px 1px 0px #b67f01;/*字体阴影效果*/
    background-color:#589442;
		}
		
		.submit_4{
	border-style:none;
   	padding:8px 30px;
    line-height:24px;
    width:162px;   
    height:50px; 
    color:#fff;
    font:16px "Microsoft YaHei", Verdana, Geneva, sans-serif;
    cursor:pointer;
    border:1px #4F872E solid;
    -webkit-box-shadow:inset 0px 0px 1px #fff;
    -moz-box-shadow:inset 0px 0px 1px #fff;
    box-shadow:inset 0px 0px 1px #fff;/*内发光效果*/
    -webkit-border-radius:4px;
    -moz-border-radius:4px;
    border-radius:4px;/*边框圆角*/
    text-shadow:1px 1px 0px #b67f01;/*字体阴影效果*/
    background-color:#89C1A0;
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
		
	</style>
	
<!-- pop-up -->
</head>
	
<body>
	<%	int counta=0;
		int countb=0;
		int countc=0;
		int countd=0;
		int counte=0;
		int countf=0;
		int countg=0;

	 %>
	<div class="banner-with-text1">
	<div class="container">
<!-- header -->	
		<div class="header">
			
			<div class="clearfix"> </div>
			<div class="header-bottom">
				
				
				
			
				
				
				<div class="header-bottom-left">
					<a href="index.jsp">Eco<span>travel</span></a>
				</div>
				<div class="header-bottom-right">
					<span class="menu">MENU</span>
					<ul class="nav1">
						<li><a href="index.jsp">目的地</a></li>
						<li><a href="">景点</a></li>
						<li><a href="hotel/toList.do">酒店</a></li>
						<li><a href="">美食</a></li>
						<li class="cap"><a href="javascript:void(0)">游记</a></li>
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
<div id="no3"></div>
<div class="banner-bdy gal">
   <div class="container">
	<div id="gallery">
		
		<h3>
			<form action="myTravels/toAdd.do" method="post">
			
    			<input id="submit_2" type="submit" value="添加专属自己的游记" onfocus="">
    		</form>
    	</h3>
		<p class="gal-txt">毕竟每一次旅行，都是值得记录的！</p>
		
	
		<c:if test="${empty connr }">
			<form action="myTravels/toList.do" method="post">
				<input class="submit_4" type="button"" value="所有城市" name="con">
			</form>
		</c:if>
		
		<c:if test="${!empty connr}">
			<form action="myTravels/toList.do" method="post">
				<input class="submit_4" type="submit" value="${connr}&nbsp;|&nbsp;切换" >
			</form>
			
		</c:if>
		  
		  
		  
		  
		  
		  
		<!-- 几大洲按钮 -->
		<div class="zhou">
			<form action="" method="post">
    			<input class="submit_3"  type="button"  value="北京" onclick="tjb()">
    		</form>
    	</div>
    	
    	
		<div class="zhou">
			<form action="" method="post">
    			<input class="submit_3" type="button"  value="上海" onclick="tjs()">
    				
    		</form>
		</div>
		<div class="zhou">
			<form action="" method="post">
    			<input class="submit_3" type="button"  value="香港" onclick="tjx()">
    				
    		</form>
		</div>
		<div class="zhou">
			<form action="" method="post" >
    			<input class="submit_3" type="button"  value="澳门" onclick="tja()">
    				
    		</form>
		</div>
		<div class="zhou">
			<form action="" method="post" >
    			<input class="submit_3" type="button"  value="云南" onclick="tjy()">
    				
    		</form>
		</div>
		<div class="zhou">
			<form action="" method="post">
    			<input class="submit_3" type="button"  value="青海" onclick="tjq()" >	
    		</form>
    		<script type="text/javascript">
    			function tjq(){
    				window.location.href="myTravels/toList.do?con=青海";	
    			}
    			function tjb(){
    				window.location.href="myTravels/toList.do?con=北京";	
    			}
    			function tjx(){
    				window.location.href="myTravels/toList.do?con=香港";	
    			}
    			function tja(){
    				window.location.href="myTravels/toList.do?con=澳门";	
    			}
    			function tjy(){
    				window.location.href="myTravels/toList.do?con=云南";	
    			}
    			function tjs(){
    				window.location.href="myTravels/toList.do?con=上海";	
    			}
    			
    		
    		</script>
    		
    		
		</div>
		<div class="zhou">
			<form action="myTravels/toList.do" method="post">
    			<input class="submit_3" type="button" value="更多" id="goodsname7"  onmouseover="njz()" onmouseout="njz1()">
    				<div id="s_goodsname7" style="border: thin solid #C0C0C0; display: none; background-color: #FFFFFF;" onmouseover="njz()" onmouseout="njz1()">
        				
        				<table  border="0" width="100%">
        						<tr>
        							<c:forEach items="${cList}" var="cl">
        							
        							<td width="20%" style="padding: 5px 0px;">       								
        								<a href="myTravels/toList.do?con=${cl}"><font color="gray" style="font-family: 华文细黑">${cl}</font></a>			      									
        							</td>
        									<%countg++;
        									 if(countg%5==0){%>
        									 	<tr><td></td></tr>
        									 <% }%>
        								
        							</c:forEach>
        						</tr>
        					</table>
       				 </div> 
    		</form>
		</div>
		
		<hr>&nbsp;
		
		

		
		
		
		<%int count=0; %>
		<hr>
    	<div id="no1">
    		 <table border="0" width="100%">
   
   
    		<tr>
    		<c:if test="${empty tList }">
				<tr>
					<td colspan="9"><a href="myTravels/toAdd.do">还没有改城市的游记，来添加一篇吧！</a></td>
				</tr>
			</c:if>
   			<c:if test="${!empty tList}">
   			<c:forEach items="${tList}" var="t"> 
   				<form id="myFormShow<%=count%>" action="myTravels/toShow.do" method="post">
   								<input type="hidden" name="id" value="${t.id}">
   							</form>
   					<td >
   						<div id="no2">
   							<a href="javascript:void(0)" onclick="ck('<%=count%>')"><img src="/pic/${t.picture_id}" width="300px" height="160px"></a><br>
   							<b><big><a href="javascript:void(0)" onclick="ck('<%=count++%>')">${t.name}</a></big></b><br>
   							<p style="line-height: 21px"><font color="gray">作者：${t.author}<br> 
   							出行日期：${t.time}<br>
   							天数：${t.days}<br>
   							线路：${t.way}<br>
   							旅游地点：${t.address}<br></font>
   							</p>
   						
   						</div>
   					</td>
   							<%if(count%3==0){%>
   				<tr><td><br></td></tr>
   							<% } %>
   			
   					
   			
   						</c:forEach>
   	 				</c:if>
   	 			</tr>
   			 </table>
    	
    	</div>
	<div id="no11"></div>
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
			<p>Copyright &copy; 2016.Company name All rights <a href="http://www.cssmoban.com/" target="_blank" title="驴友之家">旅游网</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">驴友之家</a></p>
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
