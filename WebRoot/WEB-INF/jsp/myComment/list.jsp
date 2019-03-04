<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'list.jsp' starting page</title>    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function add(){
			window.location.href = "myComment/toAdd.do";
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
  	%>
	<h1 align="center">***列表页***</h1>
	<hr width="1000px" align="center"/>
	<table width="900px" align="center">
		<tr>
			<td>
				<input type="button" value="添加" onclick="add()"/>&nbsp;&nbsp;&nbsp;
				<input type="button" value="删除"/>&nbsp;&nbsp;&nbsp;
				<input type="button" value="修改"/>&nbsp;&nbsp;&nbsp;
				<input type="button" value="列表"/>&nbsp;&nbsp;&nbsp;
			</td>
			<td>
				<form action="myComment/toList.do" method="post">
				<input type="text" name="con"/>
				<input type="submit" value="查询"/>
				</form>
			</td>
		</tr>
	</table><br/>
	<table width="900px" align="center" border="1">
		<tr>
			<td width="5%">
				<input type="checkbox"/>
			</td>
			<td width="10%">用户名</td>
			<td width="10%">标题</td>
			<td width="30%">描述</td>
			<td width="10%">评分</td>
			<td width="10%">时间</td>
			<td width="10%">图片</td>
			<td width="15%">操作</td>
		</tr>
		<c:forEach items="${icList}" var="ic">
			<tr>
				<td>
					<input type="checkbox"/>
				</td>
				<td>${ic.username}</td>
				<td>${ic.title}</td>
				<td>${ic.describe}</td>
				<td>${ic.grade}</td>
				<td>${ic.time}</td>
				<td>${ic.pictureId}</td>
				<td>
					<form id="myFormFind<%=count%>" action="myComment/toFind.do" method="post">
						<input type="hidden" name="id" value="${ic.id}"/>
					</form>
					<form id="myFormUpdate<%=count%>" action="myComment/toUpdate.do" method="post">
						<input type="hidden" name="id" value="${ic.id}"/>
					</form>
					<form id="myFormDelete<%=count%>" action="myComment/delete.do" method="post">
						<input type="hidden" name="id" value="${ic.id}"/>
					</form>
					<a href="javascript:void(0)" onclick="find('<%=count%>')">查询</a>
					<a href="javascript:void(0)" onclick="update('<%=count%>')">修改</a>
					<a href="javascript:void(0)" onclick="return deletes('<%=count++%>')">删除</a>
				</td>
			</tr>
		</c:forEach>
	</table>
  </body>
</html>





















