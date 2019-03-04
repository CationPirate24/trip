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
    <title>查看页</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    
    <link href='http://fonts.useso.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/templatemo-style.css" rel="stylesheet">

  </head>
  <body>
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
            <li><a href="#" class="active"><i class="fa fa-bar-chart fa-fw"></i>酒店管理员</a></li>
            <li><a href="#"><i class="fa fa-database fa-fw"></i>景点管理员</a></li>
            <li><a href="#"><i class="fa fa-users fa-fw"></i>美食管理员</a></li>
            <li><a href="#"><i class="fa fa-sliders fa-fw"></i>用户管理员</a></li>
            <li><a href="manager/toAdd.do"><i class="fa fa-map-marker fa-fw"></i>注册</a></li>
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
                <li><a href="">欢迎您：${myManager.name}</a></li>
                <li><a href="manager/toLogin.do">注销</a></li>
                <li><a href="manager/toAdd.do">注册</a></li>
              </ul>
            </nav>
          </div>
        </div>
        <div class="templatemo-content-container">
          <div class="templatemo-content-widget white-bg">
            <h2 class="margin-bottom-10">查看酒店</h2>
            <p>Here goes another form and form controls.</p>
            <form action="hotelManager/find.do" class="templatemo-login-form" method="post">
              
              <div class="row form-group">
                <div class="col-lg-12 has-success form-group">                  
                    <label class="control-label" for="inputWithSuccess">酒店名：${hv.name}</label>
                </div>
              </div>
              <div class="row form-group">
                <div class="col-lg-12 has-warning form-group">                  
                    <label class="control-label" for="inputWithWarning">价格：${hv.price}</label>
                </div>
              </div>
              
              <div class="row form-group">
                <div class="col-lg-12 form-group">                   
                    <label class="control-label" for="inputNote">酒店描述：${hv.describe}</label>
                </div>
              </div>
              
              <div class="row form-group">
                <div class="col-lg-12 has-success form-group">                   
                    <div class="margin-right-15 templatemo-inline-block">
                      <label class="control-label" for="inputWithSuccess">酒店类型：${hotelTypes}</label>
                    </div>
                </div>
              </div>
              
              <div class="row form-group">
                <div class="col-lg-12 has-warning form-group">                   
                    <label class="control-label" for="inputWithWarning">所在城市：${myCityName}</label>
                </div>
              </div>
              
              <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group"> 
                  <label class="control-label templatemo-block">酒店图片</label>                 
                  <img src="/pic/${hv.picture_id}" width="300px" height="200px"/>
                </div>
                <div class="col-lg-6 col-md-6 form-group">
                  <div>
                    <label class="control-label templatemo-block">地图</label> 
                    <img src="/pic/${hv.map_id}" width="300px" height="200px"/>                    
                  </div>                  
                </div> 
              </div>
              
              <div class="form-group text-right">
                <button type="submit" class="templatemo-blue-button">返回</button>
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
