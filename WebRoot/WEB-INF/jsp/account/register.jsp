<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
	<head>
		<base href="<%=basePath%>">
		<title>注册</title>
		<!-- for-mobile-apps -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords"
			content="Manufactory Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<script type="application/x-javascript">
addEventListener("load", function() {
	setTimeout(hideURLbar, 0);
}, false);
function hideURLbar() {
	window.scrollTo(0, 1);
}</script>
		<!-- //for-mobile-apps -->
		<link href="css3/bootstrap1.css" rel="stylesheet" type="text/css"
			media="all" />
		<link href="css3/style1.css" rel="stylesheet" type="text/css"
			media="all" />
		<!-- js -->
		<script src="js/jquery-1.11.1.min.js">
</script>
		<!-- //js -->
		<!-- start-smoth-scrolling -->
		<script type="text/javascript" src="js3/move-top.js">
</script>
		<script type="text/javascript" src="js3/easing.js">
</script>
		<script type="text/javascript">
jQuery(document).ready(function($) {
	$(".scroll").click(function(event) {
		event.preventDefault();
		$('html,body').animate( {
			scrollTop : $(this.hash).offset().top
		}, 1000);
	});
});
</script>
		<script type="text/javascript">
function tj() {

	var username = document.getElementById("username1");
	if (username.value == "") {
		alert("对不起，用户名不能为空");
		return false;
	}
	var password = document.getElementById("password");

	var passwordConfirm = document.getElementById("passwordConfirm");
	if (password.value != passwordConfirm.value) {
		alert("对不起，您2次输入的密码不一致");
		return false;
	} else {
		document.getElementById("form1").submit();

	}
}

		
</script>
		<style type="text/css">
body {
	background-image: url(image3/banner.png);
	background-repeat: repeat-x;
}
</style>
		<!-- start-smoth-scrolling -->

		<link
			href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
			rel='stylesheet' type='text/css'>
		<link
			href='https://fonts.googleapis.com/css?family=Montserrat+Alternates:400,700'
			rel='stylesheet' type='text/css'>
	</head>

	<body>
		<!-- banner -->
		<div class="banner">
			<div class="container">
				<div class="header">
					<div class="banner-left">
						<a href="index.html"><i class="glyphicon glyphicon-wrench"
							aria-hidden="true"></i>MY TRIP<span>任性,说走就走</span>
						</a>
					</div>
					<div class="main-in">
						<section>
						<button id="showLeft" class="navig"></button>
						</section>
					</div>
					<div class="clearfix">
					</div>
					<!--- Navigation from Right To Left --->
					<link rel="stylesheet" type="text/css" href="css3/component1.css" />
					<script type="text/javascript">

var _gaq = _gaq || [];
_gaq.push( [ '_setAccount', 'UA-7243260-2' ]);
_gaq.push( [ '_trackPageview' ]);

(function() {
	var ga = document.createElement('script');
	ga.type = 'text/javascript';
	ga.async = true;
	ga.src = ('https:' == document.location.protocol ? 'https://ssl'
			: 'http://www') + '.google-analytics.com/ga.js';
	var s = document.getElementsByTagName('script')[0];
	s.parentNode.insertBefore(ga, s);
})();
</script>
					<div class="cbp-spmenu-push">
						<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left"
							id="cbp-spmenu-s1">
						<h3>
							Menu
						</h3>
						<a href="#home" class="scroll">Home</a>
						<a href="#services" class="scroll">Services</a>
						<a href="#about" class="scroll">About Us</a>
						<a href="#news" class="scroll">News & Events</a>
						<a href="#contact" class="scroll">Contact</a>
						</nav>
					</div>
					<script src="js/classie.js">
</script>
					<script>
var menuLeft = document.getElementById('cbp-spmenu-s1'), showLeft = document
		.getElementById('showLeft'), body = document.body;

showLeft.onclick = function() {
	classie.toggle(this, 'active');
	classie.toggle(menuLeft, 'cbp-spmenu-open');
	disableOther('showLeft');
};
function disableOther(button) {
	if (button !== 'showLeft') {
		classie.toggle(showLeft, 'disabled');
	}
}
</script>
					<!--- Navigation from Right To Left --->
					<div class="clearfix">
					</div>
				</div>
				<div class="banner-info">
					<div class="banner-info-left">
						<h1>
							来这注册吧
						</h1>
						<form id="form1" method="post" action="account1/register.do">
							用户名:
							<input type="text" name="username" id="username1">
							<br />
							输入密码:
							<br />
							<input type="password" name="password" id="password" required=""
								style="width: 390px; height: 40px">
							<br />
							确认密码:
							<br />
							<input type="password" id="passwordConfirm" required=""
								style="width: 390px; height: 40px">
							<br />
							
							
							<input id="sub" type="button" name="Submit" value="注册"
								onclick="tj()">
							<input type="button" name="btn" value="返回上一页"
								onclick="history.go(-1)">
						</form>
					</div>
					<div class="banner-info-right">
						<h2>
							爱旅游,爱生活
						</h2>
						<p>
							Sit voluptatem accusantium doloremque laudantium qui ratione
							voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem
							ipsum quia dolor sit amet
						</p>
						<ul>
							<li>
								<a href="#" class="facebook"> </a>
							</li>
							<li>
								<a href="#" class="twitter"> </a>
							</li>
							<li>
								<a href="#" class="p"> </a>
							</li>
							<li>
								<a href="#" class="be"> </a>
							</li>
						</ul>
					</div>
					<div class="clearfix">
					</div>
				</div>
			</div>
		</div>
		<!-- //banner -->
		<!-- banner-bottom -->

		<!-- //banner-bottom -->
		<!-- about -->

		<!-- //about -->
		<!-- what-we-do -->

		<!-- //what-we-do -->
		<!-- team -->

		<!-- //team -->
		<div class="copyrights">
			Collect from
			<a href="http://www.cssmoban.com/">旅游网注册</a>
		</div>
		<!-- news -->

		<!-- //news -->
		<!-- testimonials -->
		<div class="customer">
			<div class="container">
				<h3>
					Customer Says
				</h3>
				<p class="fugiat">
					Quis autem vel eum iure reprehenderit qui in ea voluptate velit
					esse quam nihil molestiae consequatur, vel illum qui dolorem eum
					fugiat quo voluptas nulla pariatur
				</p>
				<div class="wmuSlider example1">
					<div class="wmuSliderWrapper">
						<article style="position: absolute; width: 100%; opacity: 0;">
						<div class="banner-wrap">
							<div class="testimonials-grid">
								<div class="col-md-6 testimonials-grid-left">
									<div class="testimonials-grid-left1">
										<img src="image/11.png" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right1">
										<p>
											<span>L</span>orem ipsum dolor sit amet, consectetur
											adipiscing elit, sed do eiusmod tempor incididunt ut labore
											et dolore magna aliqua. Ut enim ad minim veniam.
										</p>
									</div>
									<div class="clearfix">
									</div>
								</div>
								<div class="col-md-6 testimonials-grid-left">
									<div class="testimonials-grid-left1">
										<img src="image/10.png" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right1">
										<p>
											<span>L</span>orem ipsum dolor sit amet, consectetur
											adipiscing elit, sed do eiusmod tempor incididunt ut labore
											et dolore magna aliqua. Ut enim ad minim veniam.
										</p>
									</div>
									<div class="clearfix">
									</div>
								</div>
							</div>
						</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;">
						<div class="banner-wrap">
							<div class="testimonials-grid">
								<div class="col-md-6 testimonials-grid-left">
									<div class="testimonials-grid-left1">
										<img src="image/12.png" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right1">
										<p>
											<span>L</span>orem ipsum dolor sit amet, consectetur
											adipiscing elit, sed do eiusmod tempor incididunt ut labore
											et dolore magna aliqua. Ut enim ad minim veniam.
										</p>
									</div>
									<div class="clearfix">
									</div>
								</div>
								<div class="col-md-6 testimonials-grid-left">
									<div class="testimonials-grid-left1">
										<img src="image/10.png" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right1">
										<p>
											<span>L</span>orem ipsum dolor sit amet, consectetur
											adipiscing elit, sed do eiusmod tempor incididunt ut labore
											et dolore magna aliqua. Ut enim ad minim veniam.
										</p>
									</div>
									<div class="clearfix">
									</div>
								</div>
							</div>
						</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;">
						<div class="banner-wrap">
							<div class="testimonials-grid">
								<div class="col-md-6 testimonials-grid-left">
									<div class="testimonials-grid-left1">
										<img src="image/11.png" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right1">
										<p>
											<span>L</span>orem ipsum dolor sit amet, consectetur
											adipiscing elit, sed do eiusmod tempor incididunt ut labore
											et dolore magna aliqua. Ut enim ad minim veniam.
										</p>
									</div>
									<div class="clearfix">
									</div>
								</div>
								<div class="col-md-6 testimonials-grid-left">
									<div class="testimonials-grid-left1">
										<img src="image/12.png" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right1">
										<p>
											<span>L</span>orem ipsum dolor sit amet, consectetur
											adipiscing elit, sed do eiusmod tempor incididunt ut labore
											et dolore magna aliqua. Ut enim ad minim veniam.
										</p>
									</div>
									<div class="clearfix">
									</div>
								</div>
							</div>
						</div>
						</article>
					</div>
				</div>
				<script src="js/jquery.wmuSlider.js">
</script>
				<script>
$('.example1').wmuSlider();
</script>
			</div>
		</div>
		<!-- //testimonials -->
		<!-- services -->

		<!-- //services -->
		<!-- contact -->

		<!-- //contact -->
		<!-- footer -->
		<div class="footer">
			<div class="container">
				<div class="footer-left">
					<p>
						Copyright &copy; 2015.Company name All rights reserved.
						<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
					</p>
				</div>
				<div class="footer-right">
					<ul>
						<li>
							<a href="#" class="f"> </a>
						</li>
						<li>
							<a href="#" class="f1"> </a>
						</li>
						<li>
							<a href="#" class="f2"> </a>
						</li>
						<li>
							<a href="#" class="f3"> </a>
						</li>
					</ul>
				</div>
				<div class="clearfix">
				</div>
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

	$().UItoTop( {
		easingType : 'easeOutQuart'
	});

});
</script>
		<!-- //here ends scrolling icon -->
	</body>
</html>