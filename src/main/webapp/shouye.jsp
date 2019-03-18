<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@    page contentType="text/html; charset=utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'shouye.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link href="statics/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="statics/bootstrap/js/jquery.min.js"></script>
    <script src="statics/bootstrap/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
    #beijing {
        background-color: #dcdcdc;
        margin-top: 75px;
        padding: 10px;
    }

    #youhui {
        width: 180px;
        background: url(statics/img/news.jpg) 0px 0px round;
        height: 400px;
    }

    iframe {
        width: 930px;
        height: 450px;
    }
</style>

<body class="container">
<input id="lujing" type="text" style="display:none;" name="lujing"
       value=<%=basePath%>/>
<nav class="navbar navbar-default navbar-fixed-top navbar-inverse">
    <div class="container">
        <!-- 登录信息 -->
        <div class="navbar-header">
            <p class="navbar-text">
                <%
                    String name = (String) session.getAttribute("info");
                    if (name != null && name != "") {
                        out.print("欢迎您!&emsp;" + name + "&emsp;&emsp;");
                %>
                <a href=<%=basePath + "tuichuServlet"%>>退出 </a>
                    <%
					} else {
				%></a>
                <script>
                    alert("您尚未登录,请先登录再进行操作!");
                    self.location = '<%=basePath + "index.jsp"%>';
                </script>
                <%
                    }
                %>
            </p>
        </div>
        <!--折叠菜单-->
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</li>
                <li><a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                <li><a href=<%=basePath + "shouye.jsp"%> target="_top"><h4
                        style="line-height:25px;">&emsp;&emsp;RanGe管理系统</h4></a></li>
                <li><a>&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
            </ul>
            <!--导航条中的表单-->


        </div>
    </div>
</nav>
<div id="beijing">
    <div class="dropdown">
        <a href=<%=basePath + "vipShow.jsp"%> target="iiframe">
            <button style="width: 165px;margin-left: 100px;" type="button"
                    class="btn btn-primary ">会员管理
            </button>
        </a>
    </div>
    <div class="dropdown" style="margin-left: 300px; margin-top: -33px;">
        <a href=<%=basePath + "jiushui.jsp"%> target="iiframe">
            <button style="width: 165px;" type="button" class="btn btn-primary ">酒水外卖</button>
        </a>
    </div>
    <div class="dropdown" style="margin-left: 500px; margin-top: -33px;">
        <a href=<%=basePath + "turnover.jsp"%> target="iiframe">
            <button style="width: 165px;" type="button" class="btn btn-primary ">营业额</button>
        </a>
    </div>
    <div class="dropdown" style="margin-left: 700px; margin-top: -33px;">
        <a href=<%=basePath + "dayang.jsp"%> target="iiframe">
            <button style="width: 165px;" type="button" class="btn btn-danger ">打烊结账</button>
        </a>
    </div>


    <br/>
    <div class="row">
        <div class="col-md-10">
            <iframe src="qiutai.jsp" name="iiframe" frameborder="no"
                    scrolling="no"></iframe>
        </div>
        <div id="youhui" class="col-md-2">
            <br/> <br/> <br/> <br/>
            <h3 style="font: normal normal 20px '楷体';color:red;">
                充值送会员:<br/> <br/>&emsp;￥100==0.9折<br/> <br/>&emsp;￥300==0.8折<br/>
                <br/>&emsp;￥500==0.7折
            </h3>

        </div>
    </div>
</body>
</html>
