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
  <title>酒店的描述和评论</title>

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
	
	

	<!-- gray bg -->	
	<section class="container tm-home-section-1" id="more">
		
	
		<div class="section-margin-top about-section">
			<div class="row">				
				<div class="tm-section-header">
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-6 col-md-6 col-sm-6"><h2 class="tm-section-title">${mh.name}</h2></div>
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>	
				</div>
			</div>
			<div class="row">

				<div class="tm-about-box-2 margin-bottom-30">
					
					<table>
						<tr>
							<td width="80%">
								<img src="/pic/${mh.picture_id}" width="200px" height="200spx" alt="image" class="tm-about-box-2-img">
								<div class="tm-about-box-2-text">
									
									<p class="tm-about-box-2-description gray-text">${mh.describe}</p>
									<p class="tm-about-box-2-footer">访客评分：${grade}</p>	
									<form id="pinglun" action="comment/toCommentAdd.do" method="post">
										<input type="hidden" name="everyId" value="${mh.id}"/>
									</form>
									<p class="tm-about-box-2-footer"><a href="javascript:void(o)" onclick="pl()">点击评论</a></p>
								</div>
							</td>
							<td width="20%">
								<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
									<a href="#"><img src="/pic/${mh.map_id}" width="200px" height="200spx" alt="img" class="tm-about-box-2-img"></a>
								</div>
							</td>
						</tr>
					</table>              
				</div>
			</div>		
		</div>
	</section>		
	
	<!-- white bg -->
	<section class="tm-white-bg section-padding-bottom">
		<div class="container">
			<div class="row">
				<div class="tm-section-header section-margin-top">
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">旅行者评论</h2></div>
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>	
				</div>				
			</div>
			<div class="row">
				<!-- Testimonial -->
				<div class="col-lg-12">
					<c:forEach items="${maaList}" var="maa">
					<div class="tm-about-box-2 margin-bottom-30">
						<table>
							<tr>
								<td>
									<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
										<div class="tm-about-box-1">
											<br/><br/><br/>
											<a href="#"><img src="img/about-4.jpg" alt="img" class="tm-about-box-1-img"></a>
											<h3 class="tm-about-box-1-title">${maa.name}<span></span></h3>
											
										</div>
									</div>
								</td>
								<td>
									<img src="/pic/${maa.pictureId}" width="200px" height="200spx" alt="image" class="tm-about-box-2-img">
								</td>
								<td>
									<div class="tm-about-box-2-text">
										<h3 class="tm-about-box-2-title">${maa.title}</h3>
										<p class="tm-about-box-2-description gray-text">${maa.describe}</p>
									</div>
								</td>
							</tr>
						</table>	                
					</div>
					</c:forEach>
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
	</script>
 </body>
 </html>
