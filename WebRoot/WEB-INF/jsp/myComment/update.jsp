<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'update.jsp' starting page</title>
    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<h1 align="center">***修改页***</h1>
	<hr width="600px" align="center"/>
	<form action="myComment/update.do" method="post">
		<input type="hidden" name="id" value="${ic.id}"/>
		<input type="hidden" name="id" value="${ic.accountId}"/>
		<table align="center">
			<tr>
				<td>
					景点名：<input type="text" name="username" value="${ic.username}"/><br/><br/>
					标题：<input type="text" name="title" value="${ic.title}"/><br/><br/>
					描述：<input type="text" name="describe" value="${ic.describe}"/><br/><br/>
					类型：<input type="text" name="type" value="${ic.type}"/><br/><br/>
					评分：<input type="text" name="grade" value="${ic.grade}"/><br/><br/>
					时间：<input type="text" name="time" value="${ic.time}"/><br/><br/>
					图片：<input type="text" name="pictureId" value="${ic.pictureId}"/><br/><br/>
					<input type="submit" value="修改"/>
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>




















