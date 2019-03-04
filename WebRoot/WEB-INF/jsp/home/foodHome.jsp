<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
	<base href="<%=basePath%>">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>美食主页</title>
	 
  <link href='http://fonts.useso.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
  <link href="<%=basePath%>css9/font-awesome.min.css" rel="stylesheet">
  <link href="<%=basePath%>css9/bootstrap.min.css" rel="stylesheet">
  <link href="<%=basePath%>css9/bootstrap-datetimepicker.min.css" rel="stylesheet">  
  <link href="<%=basePath%>css9/flexslider.css" rel="stylesheet">
  <link href="<%=basePath%>css9/templatemo-style.css" rel="stylesheet">
	<link href="<%=basePath%>css9/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="<%=basePath%>css9/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Roboto+Slab:300,700,100,400' rel='stylesheet' type='text/css'>
	
	  <link href='http://fonts.useso.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
	  <link href="css2/font-awesome.min.css" rel="stylesheet">
	  <link href="css2/bootstrap.min.css" rel="stylesheet">
	  <link href="css2/bootstrap-datetimepicker.min.css" rel="stylesheet">  
	  <link href="css2/flexslider.css" rel="stylesheet">
	  <link href="css2/templatemo-style.css" rel="stylesheet">
	
	<!-- js -->
	<script src="<%=basePath%>js9/jquery.min.js"></script>
  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="<%=basePath%>js9/move-top.js"></script>
	<script type="text/javascript" src="<%=basePath%>js9/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
	</script>
	<style type="text/css">
		.t{
			text-align:center;
			text-decoration:none;
			font:11 "#000";
		}
	</style>
 </head>
  <body class="tm-gray-bg">
  	<!-- Header -->
  	<div class="tm-header">
  		<div class="container">
  			<div class="row">
  				<div class="col-lg-6 col-md-4 col-sm-3 tm-site-name-container">
  					<a href="manager/toLogin.do" target="_blank" class="tm-site-name">个人中心</a>
  						
  				</div>
	  			<div class="col-lg-6 col-md-8 col-sm-9">
	  				<div class="mobile-menu-icon">
		              <i class="fa fa-bars"></i>
		            </div>
	  				<nav class="tm-nav">
						<ul>
							<li><a href="home/toHome.do">首页</a></li>
							<li><a href="home/toCityHome.do">城市</a></li>
							<li><a href="home/toHotelHome.do">酒店</a></li>
							<li><a href="home/toInterestHome.do">景点</a></li>
							<li><a href="home/toFoodHome.do" class="active">美食</a></li>
						</ul>
					</nav>		
	  			</div>				
  			</div>
  		</div>	  	
  	</div>
	
	<!-- Banner -->
	<section class="tm-banner">
		<!-- Flexslider -->
		<div class="flexslider flexslider-banner">
		  <ul class="slides">
		    <li>
			    <div class="tm-banner-inner">
					<h1 class="tm-banner-title"><span class="tm-yellow-text">F5</span> 旅游网</h1>
					<p class="tm-banner-subtitle">For Your Vacations</p>
				</div>
		      <img src="img/banner-3.jpg" />
		    </li>
		    
		  </ul>
		</div>		
	</section>
  	
  			
	<section class="tm-grey-bg section-padding-bottom">
		<div class="container">
			<div class="row">
				<div class="tm-section-header section-margin-top">
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">热门美食精选</h2></div>
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>	
				</div>				
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
					<div class="tm-tours-box-2">
						<img src="<%=basePath%>img9/index-03.jpg" alt="image" class="img-responsive">
						<div class="tm-tours-box-2-info">
							<h3 class="margin-bottom-15">北京烤鸭</h3>
							<img src="<%=basePath%>img9/rating.png" alt="image" class="margin-bottom-5">
							<p> 2016.10.11</p>	
						</div>
						<form id="food1" action="<%=basePath%>home/foods/toFoodSelf.do" method="post">
							<input type="hidden" name="id" value="6374e734b413434fbe76d2f179e9692f"/>
						</form>	
						<a href="javascript:void(0)" class="tm-tours-box-2-link" onclick="look1()">点我</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
					<div class="tm-tours-box-2">						
						<img src="<%=basePath%>img9/index-04.jpg" alt="image" class="img-responsive">
						<div class="tm-tours-box-2-info">
							<h3 class="margin-bottom-15">驴打滚</h3>
							<img src="<%=basePath%>img9/rating.png" alt="image" class="margin-bottom-5">
							<p>2016.10.11</p>	
						</div>	
						<form id="food2" action="<%=basePath%>home/foods/toFoodSelf.do" method="post">
							<input type="hidden" name="id" value="d59cb54a985946f3a7a24b07ac052eeb"/>
						</form>					
						<a href="javascript:void(0)" class="tm-tours-box-2-link" onclick="look2()">点我</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
					<div class="tm-tours-box-2">						
						<img src="<%=basePath%>img9/index-05.jpg" alt="image" class="img-responsive">
						<div class="tm-tours-box-2-info">
							<h3 class="margin-bottom-15">中华绒螯蟹</h3>
							<img src="<%=basePath%>img9/rating.png" alt="image" class="margin-bottom-5">
							<p>2016.10.11</p>	
						</div>
						<form id="food3" action="<%=basePath%>home/foods/toFoodSelf.do" method="post">
							<input type="hidden" name="id" value="319891882e2f4f6f9df5eee62193211b"/>
						</form>						
						<a href="javascript:void(0)" class="tm-tours-box-2-link" onclick="look3()">点我</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
					<div class="tm-tours-box-2">						
						<img src="<%=basePath%>img9/index-06.jpg" alt="image" class="img-responsive">
						<div class="tm-tours-box-2-info">
							<h3 class="margin-bottom-15">大盘鸡</h3>
							<img src="<%=basePath%>img9/rating.png" alt="image" class="margin-bottom-5">
							<p>2016.10.11</p>	
						</div>	
						<form id="food4" action="<%=basePath%>home/foods/toFoodSelf.do" method="post">
							<input type="hidden" name="id" value="06b1efe7841b491ebb4777531ce5c039"/>
						</form>					
						<a href="javascript:void(0)" class="tm-tours-box-2-link" onclick="look4()">点我</a>
					</div>
				</div>
			</div>
			
		</div>
	</section>
	<!-- white bg -->
	
	<div align="center">
		<h1>目的地美食推荐</h1><br/><br/>
	</div>
	
	<%
	
	int count=0; 
	int i = 1;
	%>
	<div>
		<table align="center"  width="100%"  class="t">
				
				<tr  height="30px">
					<c:if test="${! empty cList}">	
					<c:forEach items="${cList}" var="c">
						<td width="20%">
							<form id="myCity<%=i%>" action="<%=basePath%>home/foods/toFoodOfMyCity.do" method="post">
								<input type="hidden" name="myCityId" value="${c.id}"/>
							</form>
							<a href="javascript:void(0)" onclick="cs('<%=i++%>')">${c.name}</a>
						</td>			
							<%count++;
									if(count%5==0){%>
										<tr  height="15px" ></tr>
									<% }
								%>
								
					</c:forEach>		
					</c:if>	
				</tr>
			
				
		
		
		
		</table>

	</div>					
	
	

			
					
		
	
	<footer class="tm-black-bg">
		<div class="container">
			<div class="row">
				<p class="tm-copyright-text">Copyright &copy; 2084 Your Company Name 
                
                | More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
			</div>
		</div>		
	</footer>
	<script type="text/javascript" src="js9/jquery-1.11.2.min.js"></script>      		<!-- jQuery -->
  	<script type="text/javascript" src="js9/moment.js"></script>							<!-- moment.js -->
	<script type="text/javascript" src="js9/bootstrap.min.js"></script>					<!-- bootstrap js -->
	<script type="text/javascript" src="js9/bootstrap-datetimepicker.min.js"></script>	<!-- bootstrap date time picker js, http://eonasdan.github.io/bootstrap-datetimepicker/ -->
	<script type="text/javascript" src="js9/jquery.flexslider-min.js"></script>
<!--
	<script src="js/froogaloop.js"></script>
	<script src="js/jquery.fitvid.js"></script>
-->
   	<script type="text/javascript" src="<%=basePath%>js9/templatemo-script.js"></script>      		<!-- Templatemo Script -->
	<script type="text/javascript" src="js2/jquery-1.11.2.min.js"></script>      		<!-- jQuery -->
  	<script type="text/javascript" src="js2/bootstrap.min.js"></script>					<!-- bootstrap js -->
  	<script type="text/javascript" src="js2/jquery.flexslider-min.js"></script>			<!-- flexslider js -->
  	<script type="text/javascript" src="js2/templatemo-script.js"></script>
	<script>
		// HTML document is loaded. DOM is ready.
		$(function() {

			$('#hotelCarTabs a').click(function (e) {
			  e.preventDefault()
			  $(this).tab('show')
			})

        	$('.date').datetimepicker({
            	format: 'MM/DD/YYYY'
            });
            $('.date-time').datetimepicker();

			// https://css-tricks.com/snippets/jquery/smooth-scrolling/
		  	$('a[href*=#]:not([href=#])').click(function() {
			    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
			      var target = $(this.hash);
			      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
			      if (target.length) {
			        $('html,body').animate({
			          scrollTop: target.offset().top
			        }, 1000);
			        return false;
			      }
			    }
		  	});
		});
		
		// Load Flexslider when everything is loaded.
		$(window).load(function() {	  		
			// Vimeo API nonsense

/*
			  var player = document.getElementById('player_1');
			  $f(player).addEvent('ready', ready);
			 
			  function addEvent(element, eventName, callback) {
			    if (element.addEventListener) {
			      element.addEventListener(eventName, callback, false)
			    } else {
			      element.attachEvent(eventName, callback, false);
			    }
			  }
			 
			  function ready(player_id) {
			    var froogaloop = $f(player_id);
			    froogaloop.addEvent('play', function(data) {
			      $('.flexslider').flexslider("pause");
			    });
			    froogaloop.addEvent('pause', function(data) {
			      $('.flexslider').flexslider("play");
			    });
			  }
*/

			 
			 
			  // Call fitVid before FlexSlider initializes, so the proper initial height can be retrieved.
/*

			  $(".flexslider")
			    .fitVids()
			    .flexslider({
			      animation: "slide",
			      useCSS: false,
			      animationLoop: false,
			      smoothHeight: true,
			      controlNav: false,
			      before: function(slider){
			        $f(player).api('pause');
			      }
			  });
*/


			  

//	For images only
		    $('.flexslider').flexslider({
			    controlNav: false
		    });


	  	});
		
		function cs(num){
			document.getElementById("myCity"+num).submit();
		}
		
		function look1(){
			document.getElementById("food1").submit();
		}
		function look2(){
			document.getElementById("food2").submit();
		}
		function look3(){
			document.getElementById("food3").submit();
		}
		function look4(){
			document.getElementById("food4").submit();
		}
	</script>
 </body>
 </html>