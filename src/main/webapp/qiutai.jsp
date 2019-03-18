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

<title>My JSP 'qiutai.jsp' starting page</title>

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


body {
	background-color:#dcdcdc;
	
}

div {
	width: 100px;
	height: 100px;
	text-align: center;
}
#yi, #yiyi {
	margin-top: 50px;
	margin-left: 157px;
}


#er, #erer {
	margin-top: -100px;
	margin-left: 415px;
}

#san, #sansan {
	margin-top: -100px;
	margin-left: 673px;
}

#si, #sisi {
	margin-top: 80px;
	margin-left: 286px;
}

#wu, #wuwu {
	margin-top: -100px;
	margin-left: 544px;
}

#qiugan {
	width: 930px;
	height: 200px;
}
</style>
</head>

<body><input id="lujing" type="text" style="display:none;" name="lujing" value=<%=basePath %>/>
	<div id="yi" onclick="kaiguan(1)">
		<img src="statics/img/qiutai.jpg" width="100%" />
	</div>
	<div id="er" onclick="kaiguan(2)">
		<img src="statics/img/qiutai.jpg" width="100%" />
	</div>
	<div id="san" onclick="kaiguan(3)">
		<img src="statics/img/qiutai.jpg" width="100%" />
	</div>
	<div id="si" onclick="kaiguan(4)">
		<img src="statics/img/qiutai.jpg" width="100%" />
	</div>
	<div id="wu" onclick="kaiguan(5)">
		<img src="statics/img/qiutai.jpg" width="100%" />
	</div>

	<div id="yiyi" style="margin-top: -220px;height: 60px;"><span></span><br /><span></span></div>
		<div id="erer" style="margin-top: -60px;height: 60px;"><span></span><br /><span></span></div>
		<div id="sansan" style="margin-top: -60px;height: 60px;"><span></span><br /><span></span></div>
		<div id="sisi" style="margin-top: 120px;height: 60px;"><span></span><br /><span></span></div>
		<div id="wuwu" style="margin-top: -60px;height: 60px;"><span></span><br /><span></span></div>

<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	
	<script src="statics/bootstrap/js/openClose.js">
		
	</script>
</body>
</html>
