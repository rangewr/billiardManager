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

<title>My JSP 'dayang.jsp' starting page</title>

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
<style type="text/css">
#kuang {
	width: 930px;
	height: 450px;
	background-color: #dcdcdc;
}

h2 {
	color: orangered;
}

table {
	color: #255625;
}

input {
	color: #985F0D;
}
</style>
</head>

<body><input id="lujing" type="text" style="display:none;" name="lujing" value=<%=basePath %>/>
	<div id="kuang">
		<center>
			<br /> 
			<h2>金日营业信息</h2>
			<br />
			<table class="table">
				<tr height="50">
					<td width="100"></td>
					<td align="right">台费收入:&emsp;</td>
					<td><input type="text" readonly id="taifei" /></td>
				</tr>
				<tr height="50">
					<td width="100"></td>
					<td align="right">新办会员:&emsp;</td>
					<td><input type="text" readonly id="newvip" /></td>
				</tr>
				<tr height="50">
					<td width="100"></td>
					<td align="right">会员充值:&emsp;</td>
					<td><input type="text" readonly id="chong" /></td>
				</tr>
				<tr height="50">
					<td width="100"></td>
					<td align="right">酒水外卖:&emsp;</td>
					<td><input type="text" readonly id="wai" /></td>
				</tr>
				<tr align="left">

					<td></td>
					<td></td>
					<td><span style="font:normal normal 20px '微软雅黑';color:orange;">总收入:&emsp;￥&emsp;</span>
						<span id="zong"
						style="font:normal normal 20px '微软雅黑';color:orange;"></span></td>
				</tr>
				<tr>
					<td colspan="4" align="center">
						<div class="container">
							<button id="dayang" class="btn btn-danger">&emsp;打烊&emsp;</button>
							&emsp;&emsp; &emsp;&emsp; <a href=<%=basePath+"shouye.jsp" %> target="_top"><button
									class="btn btn-default">&emsp;取消&emsp;</button></a>
						</div>
					</td>
				</tr>
			</table>
		</center>
	</div>


	<script type="text/javascript" src="statics/bootstrap/js/dayang.js"></script>
</body>
</html>
