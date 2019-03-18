<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@	page contentType="text/html; charset=utf-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'video.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="statics/bootstrap/css/bootstrap.min.css" />
	<script src="statics/bootstrap/js/jquery.min.js"></script>
<script src="statics/bootstrap/js/bootstrap.min.js"></script>
  </head>
  
  <body><input id="lujing" type="text" style="display:none;" name="lujing" value=<%=basePath %>/>
		<div style="margin: 40px auto;width: 900px;">
			<video width="100%" src="img/qiaovideo.mp4" autoplay> </video>
		</div>
		<script>
			var basePath;
			$(document).ready(function() {
				basePath=$("#lujing").val();
				console.log("video basePath==="+basePath);
				setTimeout("play()", 15000);
			});
			function play() {
				self.location =basePath+ "shouye.jsp";
			}
		</script>
	</body>
</html>
