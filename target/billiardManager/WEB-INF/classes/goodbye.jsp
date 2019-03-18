<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@	page contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'goodbye.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
		
		#kuang{
			margin:0px auto;
			background:url(statics/img/hy.jpg) 0px 0px round;
			background-color:#dcdcdc;
			width:950px;
			height:580px;
		}
		#wenzi{
			margin-left:850px;
			color:orange;
			font:normal bold 60px "楷体";
		}
	</style>
  </head>
  
  <body><input id="lujing" type="text" style="display:none;" name="lujing" value=<%=basePath %>/>
    <div id="kuang">
    	<div id="wenzi"><br/><br/><br/>
    		
    	</div>
    </div>
  </body>
</html>
