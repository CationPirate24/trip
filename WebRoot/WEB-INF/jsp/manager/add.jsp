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
    <title>注册页</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    
    <link href='http://fonts.useso.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/templatemo-style.css" rel="stylesheet">

  </head>
  <body>
  	<%
  		int count = 1;
  		int count2 = 4;
  	%>
    <!-- Left column -->
    <div class="templatemo-flex-row">
      <div class="templatemo-sidebar">
        <header class="templatemo-site-header">
          <div class="square"></div>
          <h1>Visual Admin</h1>
        </header>
        <div class="profile-photo-container">
          <img src="images/profile-photo.jpg" alt="Profile Photo" class="img-responsive">
          <div class="profile-photo-overlay"></div>
        </div>
        <!-- Search box -->
        <form class="templatemo-search-form" role="search">
          <div class="input-group">
              <button type="submit" class="fa fa-search"></button>
              <input type="text" class="form-control" placeholder="查找" name="srch-term" id="srch-term">
          </div>
        </form>
        <div class="mobile-menu-icon">
            <i class="fa fa-bars"></i>
          </div>
        <nav class="templatemo-left-nav">
          <ul>
            <li><a href="#"><i class="fa fa-home fa-fw"></i>超级管理员</a></li>
            <li><a href="#"><i class="fa fa-home fa-fw"></i>目的地管理员</a></li>
            <li><a href="#"><i class="fa fa-bar-chart fa-fw"></i>酒店管理员</a></li>
            <li><a href="#"><i class="fa fa-database fa-fw"></i>景点管理员</a></li>
            <li><a href="#"><i class="fa fa-users fa-fw"></i>美食管理员</a></li>
            <li><a href="#"><i class="fa fa-sliders fa-fw"></i>用户管理员</a></li>
            <li><a href="manager/toAdd.do" class="active"><i class="fa fa-map-marker fa-fw"></i>注册</a></li>
            <li><a href="manager/toLogin.do"><i class="fa fa-eject fa-fw"></i>登录界面</a></li>
          </ul>
        </nav>
      </div>
      <!-- Main content -->
      <div class="templatemo-content col-1 light-gray-bg">
        <div class="templatemo-top-nav-container">
          <div class="row">
            <nav class="templatemo-top-nav col-lg-12 col-md-12">
              <ul class="text-uppercase">
                <li><a href="">欢迎您注册F5旅游网</a></li>
                <li><a href="">注册之后  享受更多优惠</a></li>
              </ul>
            </nav>
          </div>
        </div>
        <div class="templatemo-content-container">
          <div class="templatemo-content-widget white-bg">
            <h2 class="margin-bottom-10">注册页面</h2>
            <p>Here goes another form and form controls.</p>
            <form action="manager/add.do" class="templatemo-login-form" method="post" enctype="multipart/form-data">
              
              <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputUsername">用户名</label>
                    <input type="text" name="username" class="form-control" id="inputUsername" placeholder="Admin">                  
                </div>
				<div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputNewPassword">密码</label>
                    <input type="password" name="password" class="form-control" id="inputNewPassword" placeholder="******">
                </div>
              </div>


              <div class="row form-group">
				<div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputFirstName">姓名</label>
                    <input type="text" name="name" class="form-control" id="inputFirstName" placeholder="John">                  
                </div>
				<div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputLastName">年龄</label>
                    <input type="text" name="age" class="form-control" id="inputLastName" placeholder="23">                  
                </div>
              </div>
              

              <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputEmail">邮箱</label>
                    <input type="email" name="email" class="form-control" id="inputEmail" placeholder="admin@company.com">                  
                </div>
                 <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputLastName">电话</label>
                    <input type="text" name="phone" class="form-control" id="inputLastName" placeholder="phone">                  
                </div>
              </div>


              
              <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group"> 
                  <label class="control-label templatemo-block">管理员类型</label>                
                  <select name="type" multiple class="templatemo-multi-select form-control" style="overflow-y: scroll;">
                    <c:forEach items="${managerList}" var="ml">
                    <option value="${ml.myKey}">${ml.myValue}</option>
                    </c:forEach>                   
                  </select>
                </div>
                <div class="col-lg-6 col-md-6 form-group">
                  <div>
                    <label class="control-label templatemo-block">性别</label> 
                    <c:forEach items="${sexList}" var="sex">
                    <div class="templatemo-block margin-bottom-5">
                      <input type="radio" name="sex" id="r<%=count%>" value="${sex.myKey}" checked>
                      <label for="r<%=count++%>" class="font-weight-400"><span></span>${sex.myValue}</label>
                    </div>
                    </c:forEach>           
                  </div>                  
                </div> 
              </div>

              <div class="form-group text-right">
                <button type="submit" class="templatemo-blue-button">注册</button>
              </div>
                                         
            </form>
          </div>
          <footer class="text-right">
            <p>Copyright &copy; 2084 Company Name 
            | More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
          </footer>
        </div>
      </div>
    </div>

    <!-- JS -->
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>        <!-- jQuery -->
    <script type="text/javascript" src="js/bootstrap-filestyle.min.js"></script>  <!-- http://markusslima.github.io/bootstrap-filestyle/ -->
    <script type="text/javascript" src="js/templatemo-script.js"></script>        <!-- Templatemo Script -->
  </body>
</html>
