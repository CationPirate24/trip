<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<style type="text/css">
	#d2{
			width:300px;
			height:300px;
			margin:0 auto ;
		}
	#d1{
		width:300px;
		height:300px;
		margin:0 auto ;
	}
</style>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.3.js"/></script>	
<script type="text/javascript">
	function tj(){
		var username= document.getElementById("username1");
		if(username.value == ""){
			alert("用户名不能为空");
		}
		var password =document.getElementById("password1");
		if(password.value==""){
			alert("密码不能为空");
		} 
		else{
		 document.getElementById("myForm1").submit();
		}
	}
	
</script>




  </head>
  
  <body>
  <div id = "d2"></div>
  <form action="account1/checkLogin.do" method="post" id="myForm1">
 	<div id="d1">
 		<table>
 			<tr>
 				<td>
 				用户名:
 				</td>
 				<td>
 				<input name="username" type="text" id="username1"/>
 				</td>
 				<td>
 				
 				</td>
 			</tr>
 			<tr>
 				<td>
 				密码:
 				</td>
 				<td>
 				<input name="password" type="password" id="password1"/>
 				</td>
 				<td>
 				
 				</td>
 			</tr>
 			<tr>
 				<td>
 				
 				</td>
 				<td id="myTd1">
 				&nbsp;
 				${l}
 				</td>
 				<td>
 				
 				</td>
 			</tr>
 			<tr>
 				<td>
 		 
 				</td>
 				<td>
 				<input type="button" id="myButton1" value="提交" onclick="tj()"/>
 				</td>
 				<td>
 				
 				</td>
 			</tr>
 		</table>
 	</div>
 	</form>
  </body>
</html>
