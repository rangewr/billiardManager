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

<title>My JSP 'vipShow.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="statics/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="statics/bootstrap/js/jquery.min.js"></script>
<script src="statics/bootstrap/js/bootstrap.min.js"></script>
<style type="text/css">
a {
	text-decoration: none;
}

#kuang {
	background-color: #dcdcdc;
	width: 930px;
	height: 450px;
}
</style>
</head>

<body>
	<input id="lujing" type="text" style="display:none;" name="lujing"
		value=<%=basePath%> />
	<div id="kuang">
		<div class="container">
			<center>
				<h3>会员信息</h3>
				<table id="contextInfo"
					class="table table-bordered table-hover text-center" width="100%"></table>
				<br /> <a style="text-decoration:none;" href=<%=basePath + "addvip.jsp"%> target="iiframe">
					<button type="button" class="btn btn-default" id="xinzeng">新增会员</button>
				</a> &emsp;&emsp;&emsp;

				<button type="button" class="btn btn-default" id="shouye">首&emsp;页</button>
				&emsp;&emsp;&emsp;

				<button type="button" class="btn btn-default" id="shangyiye">上一页</button>
				&emsp;&emsp;&emsp;

				<button type="button" class="btn btn-default" id="xiayiye">下一页</button>
				&emsp;&emsp;&emsp;

				<button type="button" class="btn btn-default" id="weiye">尾&emsp;页</button>

			</center>
		</div>
	</div>
	<script src="statics/bootstrap/js/chongShan.js"></script>
</body>
</html>
<!--  -->