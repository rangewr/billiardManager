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

<title>My JSP 'jieZhang.jsp' starting page</title>

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
			<br />
			<h2>结账信息</h2>
			<br />
			<table>

				<tr height="50">
					<td align="right">台号:</td>
					<td><input type="text" readonly id="taihao" value=<%=request.getParameter("num") %> /></td>
					<td width="100" align="right">台费消费:</td>
					<td><input type="text" readonly id="taifei" /></td>
				</tr>
				<tr height="50">
					<td align="right">开台时间:</td>
					<td><input type="text" readonly id="openTime" /></td>
					<td width="10" align="right">酒水累计:</td>
					<td><input type="text" readonly id="jiuShui" /></td>
				</tr>
				<tr height="50">
					<td align="right">单价:</td>
					<td><input type="text" readonly value="15" /></td>
					<td width="100" align="right" >累计消费:</td>
					<td><input type="text" readonly id="leiJi" /></td>
				</tr>
				<tr height="50">
					<td align="right">已用时:</td>
					<td><input type="text" readonly id="usedTime" /></td>
					<td width="100" align="right">会员卡号:</td>
					<td><input type="text" id="vipNum" name="vipNum" /></td>
				</tr>
				<tr height="50">
				</tr>
				<tr>
					<td colspan="4" align="center">
						<div class="container">
							<button id="xianjin" class="btn btn-default">现金结账</button>
							&emsp;&emsp;
							<button id="shuaka" class="btn btn-default">&emsp;刷卡&emsp;</button>
							&emsp;&emsp;
							<a href=<%=basePath+"shouye.jsp" %> target="_top"><button  class="btn btn-default">&emsp;取消&emsp;</button></a>
						</div>
					</td>
				</tr>
			</table>
		</center>
	</div>
	
	
	<script type="text/javascript" src="statics/bootstrap/js/jieZhang.js"></script>
</body>
</html>
