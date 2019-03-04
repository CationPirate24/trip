<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'find.jsp' starting page</title>
    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<h1 align="center">***评论信息页***</h1>
	<hr width="600px" align="center"/>
	<form action="myComment/find.do" method="post">
		<table align="center">
			<tr>
				<td>
					用户名：<input type="text" name="username" value="${ic.username}"/><br/><br/>
					描述：<input type="text" name="describe" value="${ic.describe}"/><br/><br/>
					评分：<input type="text" name="grade" value="${ic.grade}"/><br/><br/>
					时间：<input type="text" name="time" value="${ic.time}"/><br/><br/>
					图片：<input type="text" name="pictureId" value="${ic.pictureId}"/><br/><br/>
					<input type="submit" value="返回"/>
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>













