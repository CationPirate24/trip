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
  <title>城市美食</title>

  <link href='http://fonts.useso.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
  <link href="css2/font-awesome.min.css" rel="stylesheet">
  <link href="css2/bootstrap.min.css" rel="stylesheet">
  <link href="css2/bootstrap-datetimepicker.min.css" rel="stylesheet">  
  <link href="css2/flexslider.css" rel="stylesheet">
  <link href="css2/templatemo-style.css" rel="stylesheet">

  </head>
  <body class="tm-gray-bg">
  	<%
  		int count = 1;
  	%>
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
	
	<!-- Banner -->
	<section class="tm-banner">
		<!-- Flexslider -->
		<div class="flexslider flexslider-banner">
		  <ul class="slides">
		    <li>
			    <div class="tm-banner-inner">
					<h1 class="tm-banner-title"><span class="tm-yellow-text">F5</span> 旅游网</h1>
					<p class="tm-banner-subtitle">For Your Vacations</p>
					<a href="#more" class="tm-banner-link">查看地图</a>	
				</div>
		      <img src="img/banner-3.jpg" />
		    </li>
		    
		  </ul>
		</div>		
	</section>

	<!-- white bg -->
	<section class="tm-white-bg section-padding-bottom">
		<div class="container">
			<div class="row">
				<div class="tm-section-header section-margin-top">
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">${myCity.name}美食</h2></div>
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>	
				</div>				
			</div>
			<div class="row">
				<!-- Testimonial -->
				<div class="col-lg-12">
					<div class="tm-what-we-do-right">
						<c:forEach items="${mfList}" var="mf">
						<div class="tm-about-box-2">
							
							<img src="/pic/${mf.pictureId}" width="200px" height="200spx" alt="image" class="tm-about-box-2-img">
							<div class="tm-about-box-2-text">
								<form id="myForm<%=count%>" action="home/foods/toFoodSelf.do" method="post">
									<input type="hidden" name="id" value="${mf.id}"/>
								</form>
								<a href="javascript:void(0)" onclick="ck('<%=count%>')"><h3 class="tm-about-box-2-title">${mf.name}</h3></a>
								<table>
									<tr>
										<td>
											<p class="tm-about-box-2-description gray-text">${mf.describe}</p>
										</td>
									</tr>
									<tr>
										<td>
											<a href="javascript:void(0)" onclick="ck('<%=count%>')">总共${count}条点评</a>
										</td>
									</tr>
								</table>
				                
				                <a href="javascript:void(0)" onclick="ck('<%=count++%>')"><p class="tm-about-box-2-footer">RMB&nbsp;￥${mf.price}.00*</p></a>
							</div>                
						</div>
						</c:forEach>
					</div>
					<div class="tm-testimonials-box">
						<h3 class="tm-testimonials-title">大家眼中的${myCity.name}</h3>
						<div class="tm-testimonials-content">
							<c:forEach items="${mcList}" var="mc">
							<div class="tm-testimonial">
								<p>"${mc.describe}"</p>
			                	<strong class="text-uppercase">${mc.title}</strong>		
							</div>
							</c:forEach>
							                	
						</div>
					</div>
					
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
		
		function ck(num){
			document.getElementById("myForm"+num).submit();
		}
	</script>
 </body>
 </html>
