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

<title>My JSP 'jiushui.jsp' starting page</title>

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

label {
	color: #EB9316;
}

#zong {
	margin-left: 350px;
	margin-top: -80px;
}
</style>
</head>

<body><input id="lujing" type="text" style="display:none;" name="lujing" value=<%=basePath %>/>
	<div id="kuang">
		<div class="container">
			<center>
				<br /> <span style="color: #2B542C; font: normal bold 16px '微软雅黑';">台号:</span>
				&emsp;&emsp; <input type="radio" id="yi" name="taihao" value="1" />
				<label for="yi">1号</label>&emsp;&emsp; <input type="radio" id="er"
					name="taihao" value="2" /> <label for="er">2号</label>&emsp;&emsp;
				<input type="radio" id="san" name="taihao" value="3" /> <label
					for="san">3号</label>&emsp;&emsp; <input type="radio" id="si"
					name="taihao" value="4" /> <label for="si">4号</label>&emsp;&emsp;
				<input type="radio" id="wu" name="taihao" value="5" /> <label
					for="wu">5号</label>&emsp;&emsp; <input type="radio" id="wai"
					name="taihao" value="6" /> <label for="wai">外卖</label><br /> <br />
				<span style="color: #2B542C; font: normal bold 16px '微软雅黑';">选择商品:</span><br />
				<br />
				<div class="input-group" style="width:300px">
					<span class="input-group-addon alert-info">玉溪&emsp;￥23</span> <span
						class="input-group-btn btn-group" id="yijian">
						<button type="button" class="btn btn-danger">-</button>
					</span> <input type="text" id="yik" class="form-control input-group-sm"
						value="0" /> <span class="input-group-btn btn-group">
						<button type="button" class="btn btn-success" id="yijia">+</button>
					</span>
				</div>
				<div class="input-group" style="width:300px">
					<span class="input-group-addon alert-info">南京&emsp;￥12</span> <span
						class="input-group-btn btn-group">
						<button type="button" class="btn btn-danger" id="erjian">-</button>
					</span> <input type="text" id="erk" class="form-control input-group-sm"
						value="0" /> <span class="input-group-btn btn-group">
						<button type="button" class="btn btn-success" id="erjia">+</button>
					</span>
				</div>
				<div class="input-group" style="width:300px">
					<span class="input-group-addon alert-info">红牛&emsp;￥6&ensp;</span>
					<span class="input-group-btn btn-group">
						<button type="button" class="btn btn-danger" id="sanjian">-</button>
					</span> <input type="text" id="sank" class="form-control input-group-sm"
						value="0" /> <span class="input-group-btn btn-group">
						<button type="button" class="btn btn-success" id="sanjia">+</button>
					</span>
				</div>
				<div class="input-group" style="width:300px">
					<span class="input-group-addon alert-info">雪碧&emsp;￥3&ensp;</span>
					<span class="input-group-btn btn-group">
						<button type="button" class="btn btn-danger" id="sijian">-</button>
					</span> <input type="text" id="sik" class="form-control input-group-sm"
						value="0" /> <span class="input-group-btn btn-group">
						<button type="button" class="btn btn-success" id="sijia">+</button>
					</span>
				</div>
				<div class="input-group" style="width:300px">
					<span class="input-group-addon alert-info">珍珍&emsp;￥3&ensp;</span>
					<span class="input-group-btn btn-group">
						<button type="button" class="btn btn-danger" id="wujian">-</button>
					</span> <input type="text" id="wuk" class="form-control input-group-sm"
						value="0" /> <span class="input-group-btn btn-group">
						<button type="button" class="btn btn-success" id="wujia">+</button>
					</span>
				</div>
				<div class="input-group" style="width:300px">
					<span class="input-group-addon alert-info">冰露&emsp;￥1&ensp;</span>
					<span class="input-group-btn btn-group">
						<button type="button" class="btn btn-danger" id="liujian">-</button>
					</span> <input type="text" id="liuk" class="form-control input-group-sm"
						value="0" /> <span class="input-group-btn btn-group">
						<button type="button" class="btn btn-success" id="liujia">+</button>
					</span>
				</div>
				<br /> <br /> <br />
				<button class="btn btn-success" id="queding">确定</button>
				&emsp; &emsp;
				<button class="btn btn-danger" id="chong">重置</button>
				&emsp;&emsp; <a href=<%=basePath+"shouye.jsp" %> target="_top"><button
						class="btn btn-warning">返回</button></a>

			</center>
			<div id="zong">
				<span style="color: red; font: normal bold 18px '微软雅黑';">总计 :
					￥</span><span id="zongji"
					style="color: red; font: normal bold 18px '微软雅黑';">0</span>
			</div>
		</div>
	</div>
	<script src="statics/bootstrap/js/jiushui.js"></script>
</body>
</html>
