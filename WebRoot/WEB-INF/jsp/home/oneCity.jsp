<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
  <base href="<%=basePath%>">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>城市具体页面</title>

  <link href='http://fonts.useso.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
  <link href="css2/font-awesome.min.css" rel="stylesheet">
  <link href="css2/bootstrap.min.css" rel="stylesheet">
  <link href="css2/bootstrap-datetimepicker.min.css" rel="stylesheet">  
  <link href="css2/flexslider.css" rel="stylesheet">
  <link href="css2/templatemo-style.css" rel="stylesheet">

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
							<li><a href="#">首页</a></li>
							<li><a href="#">${myCity.name}</a></li>
							<li><a href="#">酒店</a></li>
							<li><a href="#">景点</a></li>
							<li><a href="#">美食</a></li>
						</ul>
					</nav>		
	  			</div>				
  			</div>
  		</div>	  	
  	</div>
	
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

	<!-- gray bg -->	
	<section class="container tm-home-section-1" id="more">
		
	
		<div class="section-margin-top about-section">
			<div class="row">				
				<div class="tm-section-header">
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-6 col-md-6 col-sm-6"><h2 class="tm-section-title">${myCity.name}</h2></div>
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>	
				</div>
			</div>
			<div class="row">
				<div class="tm-about-box-2 margin-bottom-30">
					
					<table align="center">
						<tr>
							<td>
								<img src="/pic/${myCity.picture_id}" width="400px" height="400spx" alt="image" class="tm-about-box-2-img">
								
							</td>
							<td>
								<div class="tm-about-box-2-text">
									<form id="jiudian" action="home/hotels/toHotelOfMyCity.do" method="post">
										<input type="hidden" name="myCityId" value="${myCity.id}"/>
									</form>
									<a href="javascript:void(0)" onclick="ck1()" class="tm-banner-link">查看酒店</a>
									<form id="jingdian" action="home/interests/toInterestOfMyCity.do" method="post">
										<input type="hidden" name="myCityId" value="${myCity.id}"/>
									</form>
									<a href="javascript:void(0)" onclick="ck2()" class="tm-banner-link">查看景点</a>
									<form id="meishi" action="home/foods/toFoodOfMyCity.do" method="post">
										<input type="hidden" name="myCityId" value="${myCity.id}"/>
									</form>
									<a href="javascript:void(0)" onclick="ck3()" class="tm-banner-link">查看美食</a>
								</div>
							</td>
						</tr>
					</table>              
				</div>
			</div>		
		</div>
	</section>
	
	<footer class="tm-black-bg">
		<div class="container">
			<div class="row">
				<p class="tm-copyright-text">Copyright &copy; 2084 Your Company Name 
                
                | More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
			</div>
		</div>		
	</footer>
	<script type="text/javascript" src="js2/jquery-1.11.2.min.js"></script>      		<!-- jQuery -->
  	<script type="text/javascript" src="js2/bootstrap.min.js"></script>					<!-- bootstrap js -->
  	<script type="text/javascript" src="js2/jquery.flexslider-min.js"></script>			<!-- flexslider js -->
  	<script type="text/javascript" src="js2/templatemo-script.js"></script>      		<!-- Templatemo Script -->
	<script>
		$(function() {

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
		$(window).load(function(){
			// Flexsliders
		  	$('.flexslider.flexslider-banner').flexslider({
			    controlNav: false
		    });
		  	$('.flexslider').flexslider({
		    	animation: "slide",
		    	directionNav: false,
		    	slideshow: false
		  	});
		});
		function pl(){
			document.getElementById("pinglun").submit();
		}
		function ck1(){
			document.getElementById("jiudian").submit();
		}
		function ck2(){
			document.getElementById("jingdian").submit();
		}
		function ck3(){
			document.getElementById("meishi").submit();
		}
	</script>
 </body>
 </html>
