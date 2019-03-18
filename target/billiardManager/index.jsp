<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@	page contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<meta charset="UTF-8">
<title></title>
<style type="text/css">
#kuang {
	background: url(statics/img/back.jpg) 0px 0px no-repeat;
	width: 1000px;
	height: 580px;
	margin: 0px auto;
}
</style>
<link rel="stylesheet" href="statics/bootstrap/css/bootstrap.min.css" />
<script src="statics/bootstrap/js/jquery.min.js"></script>
<script src="statics/bootstrap/js/bootstrap.min.js"></script>
<script src="statics/bootstrap/js/denglu.js">
//
</script>
</head>

<body class="container">
	<div id="kuang">
		<center>
			<form>
			<input id="lujing" type="text" style="display:none;" name="lujing" value=<%=basePath %>/>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<div id="shuru" class="input-group" style="width:300px">
					<span class="input-group-addon">用户名:</span> <input id="userName"
						type="text" name="name" class="form-control input-group-sm"
						placeholder="userName" /><span id="greenWen"></span><span
						id="redWen"></span> <br />
				</div>
				<br />
				
				<div class="input-group" style="width:300px">
					<span class="input-group-addon">密&emsp;码:</span> <input  id="pwd"
						type="password" name="pwd" class="form-control input-group-sm"
						placeholder="passWord" /> <br />
				</div>
				<br />
				<br />
				<button type="button" id="deng" class="btn btn-primary">登&emsp;录</button>
				&emsp;&emsp;&emsp;&emsp;&emsp; <a href=<%=basePath+"zhuce.jsp" %>><input
					type="button" class="btn btn-danger" value="注&emsp;册" /></a>
			</form>
		</center>
	</div>


</body>

</html>