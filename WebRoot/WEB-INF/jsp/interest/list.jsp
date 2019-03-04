<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.java.util.PageUtil"%>
<%@page import="com.java.bean.Page"%>
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
    <title>景点管理员页面</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    
    <link href='http://fonts.useso.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/templatemo-style.css" rel="stylesheet">
    <style type="text/css">
    	#myDiv{
    		width: 100%;
    		height: 50px;
    		padding: 5px 20px;
    	}
    </style>
    <script type="text/javascript">
		function add(){
			window.location.href = "interest/toAdd.do";
		}
		function lb(){
			window.location.href = "interest/toList.do";
		}
		function cx(){
			document.getElementById("myForm1").submit();
		}
		
		function find(num){
			document.getElementById("myFormFind"+num).submit();
		}
		function update(num){
			document.getElementById("myFormUpdate"+num).submit();
		}
		function deletes(num){
			var i = confirm("是否真的删除")
			if(i==true){
				document.getElementById("myFormDelete"+num).submit();
			}
		}
	</script>
  </head>
  <body>  
  	<%
  		int count = 1;
  		Page myPage = PageUtil.getLocal();
  		int currentPage = myPage.getCurrentPage();	//当前页
  		int allRecordCount = myPage.getAllRecodeCount();	//总条数
  		int pageCount = myPage.getPageCount();	//总页数
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
            <li><a href="#" class="active"><i class="fa fa-database fa-fw"></i>景点管理员</a></li>
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
          <div id="myDiv">
          	<form action="interest/toList.do" method="post" id="myForm1">
	          	<table>
	          		<tr>
	          			<td>
	          				<input type="button" value="添加" onclick="add()"/>&nbsp;&nbsp;&nbsp;
	          			</td>
	          			<td>
	          				<input type="button" value="列表" onclick="lb()"/>&nbsp;&nbsp;&nbsp;
	          			</td>
	          			<td align="right">
							<input type="text" name="con" value="${con}"/>
							<input type="button" value="查询" onclick="cx()"/>
	          			</td>
	          		</tr>
	          	</table>
          	</form>
          </div>
          <div class="templatemo-content-widget no-padding">
            <div class="panel panel-default table-responsive">
              <table class="table table-striped table-bordered templatemo-user-table">
                <thead>
                  <tr>
                    <td width="9%"><a href="" class="white-text templatemo-sort-by">景点名<span class="caret"></span></a></td>
                    <td width="80%"><a href="" class="white-text templatemo-sort-by">描述<span class="caret"></span></a></td>
                    <td width="11%"><a href="" class="white-text templatemo-sort-by">操作<span class="caret"></span></a></td>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${miList}" var="mi">
	                  <tr>
	                    <td>${mi.name}</td>
						<td>${mi.describe}</td>
	                    <td>
							<form id="myFormFind<%=count%>" action="interest/toFind.do" method="post">
								<input type="hidden" name="id" value="${mi.id}"/>
							</form>
	                    	<a href="javascript:void(0)" onclick="find('<%=count%>')" class="templatemo-edit-btn">查看</a>
	                    
							<form id="myFormUpdate<%=count%>" action="interest/toUpdate.do" method="post">
								<input type="hidden" name="id" value="${mi.id}"/>
							</form>
	                    	<a href="javascript:void(0)" onclick="update('<%=count%>')" class="templatemo-edit-btn">修改</a>
	                    
							<form id="myFormDelete<%=count%>" action="interest/delete.do" method="post">
								<input type="hidden" name="id" value="${mi.id}"/>
							</form>
	                    	<a href="javascript:void(0)" onclick="return deletes('<%=count++%>')" class="templatemo-edit-btn">删除</a>
	                    </td>
	                  </tr>
                  </c:forEach>       
                </tbody>
              </table>    
            </div>                          
          </div>          
          
          <div class="pagination-wrap">
            <ul class="pagination">
            
			  <li><a href="#">共<%=allRecordCount%>条</a></li>
			  <li><a href="#">共<%=pageCount%>页</a></li>
              <li><a href="interest/toList.do?currentPage=1">首页</a></li>
              <li><a href="#">第<%=currentPage%>页</a></li>
              <%
    			if(currentPage==1){
    		 %>
              <li><a href="javascript:void(0)">上一页</a></li>
              <%
    		 	}else{
    		  %>
    		  <li><a href="interest/toList.do?currentPage=<%=currentPage-1%>">上一页</a></li>
    		  <%
    		  	}
    		   %>
    		
    		<%
    			if(currentPage==pageCount){
    		 %>
    		 	<li><a href="javascript:void(0)">下一页</a></li>
    		 <%
    		 	}else{
    		  %>
    		  	<li><a href="interest/toList.do?currentPage=<%=currentPage+1%>&con=${con}">下一页</a></li>
    		  <%
    		  	}
    		   %>
              <li><a href="interest/toList.do?currentPage=<%=pageCount%>">尾页</a></li>
              
            </ul>
          </div>          
          <footer class="text-right">
            <p>Copyright &copy; 2084 Company Name 
            | More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
          </footer>         
        </div>
      </div>
    </div>
    
    <!-- JS -->
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
    <script type="text/javascript" src="js/templatemo-script.js"></script>      <!-- Templatemo Script -->
    <script>
      $(document).ready(function(){
        // Content widget with background image
        var imageUrl = $('img.content-bg-img').attr('src');
        $('.templatemo-content-img-bg').css('background-image', 'url(' + imageUrl + ')');
        $('img.content-bg-img').hide();        
      });
    </script>
  </body>
</html>