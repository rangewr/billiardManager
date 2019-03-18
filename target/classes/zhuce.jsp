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

<title>My JSP 'zhuce.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="statics/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="statics/bootstrap/js/jquery.min.js"></script>
<script src="statics/bootstrap/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title></title>
<style type="text/css">
#kuang {
	background: url(statics/img/back.jpg) 0px 0px no-repeat;
	width: 1000px;
	height: 580px;
	margin: 0px auto;
}

lable {
	font-size: 16px;
}

#divId {
	width: 150px;
	height: 150px;
	margin-top: -360px;
	margin-left: 730px;
	font: normal bold 16px "微软雅黑";
	line-height: 27px;
}
</style>
<script src="statics/bootstrap/js/zhuce.js"></script>
</head>

<body class="container">
	<div id="kuang"><input id="lujing" type="text" style="display:none;" name="lujing" value=<%=basePath %>/>
		<center>
			<form action=<%=basePath+"updateServlet" %> method="post">
				<br /> <br /> <br /> <br /> 
					<h3 style="color:blue;">填写注册信息</h3>
				  <br /> <br /> 
				<br /> <br />
				<div id="shuru" class="input-group" style="width:300px">
					<span class="input-group-addon">用户名:</span> <input name="name"
						id="userName" type="text" class="form-control input-group-sm"
						placeholder="userName" /><br />
				</div>
				<br />
				<div class="input-group" style="width:300px">
					<span class="input-group-addon">密&emsp;码:</span> <input name="pwd"
						id="pwd" type="password" class="form-control input-group-sm"
						placeholder="passWord" /> <br />
				</div>
				<br />
				<div class="input-group" style="width:300px">
					<span class="input-group-addon">权&emsp;限:</span> &emsp;<input
						id="manager" type="radio" name="quanXian" value="mana" />
					<lable for="manager">管理人员</lable>
					&emsp;&emsp;<input checked id="service" name="quanXian" type="radio"
						value="ser" />
					<lable for="service">服务人员 </lable>
					<br />
				</div>
				<br /> <br />
				<button id="btnZhu" type="submit" class="btn btn-danger">注&emsp;册</button>
				&emsp;&emsp;&emsp;&emsp; <a href=<%=basePath+"index.jsp" %>><input
					type="button" class="btn btn-default" value="返回登录" /></a>
			</form>
		</center>
	</div>
	<div id="divId">
		<span id="blueName" style="color: blue;"></span> <span id="redName"
			style="color: red;"></span><br />
		<br /> <span id="bluePwd" style="color: blue;"></span> <span
			id="redPwd" style="color: red;"></span>
	</div>
</body>

</html>