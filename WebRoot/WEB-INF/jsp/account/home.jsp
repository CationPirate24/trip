<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'home.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function zhxx(){
			document.getElementById("myForm1").submit();
		}
	</script>
  </head>
  
  <body>
  	<form action="account1/toAccount.do" method="post" id="myForm1">
  		<input type="hidden" name="accountusername" value="${ma.username}"/><!-- 顾客的昵称 -->
  	</form>
   
   <a href="javascript:void(0)" onclick="zhxx()" > 账户信息</a>
  </body>
</html>
