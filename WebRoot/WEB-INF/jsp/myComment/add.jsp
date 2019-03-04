<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<h1 align="center">***添加页***</h1>
	<hr width="600px" align="center"/>
	<form action="myComment/add.do" method="post">
		<table align="center">
			<tr>
				<td>
					用户名：<input type="text" name="username"/><br/><br/>
					标题：<input type="text" name="title""/><br/><br/>
					评论：<input type="text" name="describe" value="ahvsdvcyyggbyyhgvs"/><br/><br/>
					类型：<input type="text" name="type"/><br/><br/>
					评分：<input type="text" name="grade" value="4"/><br/><br/>
					时间：<input type="text" name="time" value="11"/><br/><br/>
					图片：<input type="text" name="pictureId" value="22"/><br/><br/>
					<input type="submit" value="添加"/>
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>

















