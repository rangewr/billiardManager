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

<title>My JSP 'addvip.jsp' starting page</title>

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
	background-color: #dcdcdc;
	width: 930px;
	height: 450px;
}

h2 {
	color: orange;
	font: normal normal 30px "微软雅黑";
}

#wenzi {
	font: normal normal 16px "微软雅黑";
	color: #3E8F3E;
}

#aa {
	text-align: left;
	color: red;
	height: 30px;
	width: 200px;
	margin-left: 520px;
	margin-top: -333px;
}

#bb {
	text-align: left;
	color: red;
	height: 30px;
	width: 200px;
	margin-left: 520px;
	margin-top: 18px;
}

#cc {
	text-align: left;
	color: red;
	height: 30px;
	width: 200px;
	margin-left: 520px;
	margin-top: 17px;
}

#dd {
	text-align: left;
	color: red;
	height: 30px;
	width: 200px;
	margin-left: 520px;
	margin-top: 10px;
}
</style>

</head>
<body><input id="lujing" type="text" style="display:none;" name="lujing" value=<%=basePath %>/>
	<div id="kuang">
		<div class="container">
			<center>
				<br />
				<h2>填写会员资料&emsp;&emsp;&emsp;</h2>
				<br />
					<table class="table table-bordered">
						<tr height="30px">
							<td align="right"  id="account" width="250">会员卡号:&emsp;</td>
							<td width="350"><input type="number" id="num" name="num"
								placeholder="请输入五位数字" /></td>
						</tr>
						<tr height="30px">
							<td align="right" id="password">密码:&emsp;</td>
							<td><input type="password" id="pwd" name="pwd"
								placeholder="请输入密码" /></td>
						</tr>
						<tr height="30px">
							<td align="right" id="password2">再次输入密码:&emsp;</td>
							<td><input type="password" id="apwd" name="apwd"
								placeholder="请再次输入密码" /></td>
						</tr>
						<tr height="30px">
							<td align="right" id="name">姓名:&emsp;</td>
							<td><input type="text" id="ming" name="name"
								placeholder="请输入姓名" /></td>
						</tr>
						<tr height="30px">
							<td align="right" id="telTd">联系方式:&emsp;</td>
							<td><input type="tel" id="tel" name="tel"
								placeholder="请输入手机号" /></td>
						</tr>
						<tr height="30px">
							<td align="right" id="menoy">充值金额:&emsp;</td>
							<td><input type="number" id="jine" name="jine" step="100"
								placeholder="请输入充值金额" /></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<button id="qued" type="button" class="btn btn-success">确定</button>&emsp;&emsp;
								<button id="res" type="button" class="btn btn-primary">重填</button>&emsp;&emsp;
								<a href=<%=basePath+"shouye.jsp" %> target="iiframe">
								<button class="btn btn-default">返回</button></a>&emsp;&emsp;&emsp;&emsp;
							</td>
						</tr>
					</table>
				
				<div id="aa"></div>
				<div id="bb"></div>
				<div id="cc"></div>
				<div id="bb"></div>
				<div id="bb"></div>
				<div id="dd"></div>
			</center>
		</div>
	</div>
	<script src="statics/bootstrap/js/addVip.js"></script>
</body>
</html>
