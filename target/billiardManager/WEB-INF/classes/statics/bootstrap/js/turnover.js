/**
 * 
 */
/**
 * 
 */

var basePath;
var pageNo = 1;
var pageSize = 4;
var pageCount = 0;
var yema = 0;
//页面初始化加载，获取路径和总页码数量
$(document).ready(function() {
	basePath = $("#lujing").val();
	//获取页码总数
	chazong();
});

function chazong() {
	$.post("getTPageCount", "pageSize=" + pageSize, setPageCount, "json");
}
//对页码总页数赋值
function setPageCount(data) {
	pageCount = data.count * 1;
	if (pageCount % pageSize == 0) {
		yema = pageCount / pageSize;
	} else {
		yema = parseInt(pageCount / pageSize) + 1;
	}
	chaxun(pageNo);
}
//首页显示
$("#shouye").click(function() {
	pageNo = 1;
	chaxun(pageNo);
});
//上一页
$("#shangyiye").click(function() {
	if (pageNo != 1) {
		pageNo--;
		chaxun(pageNo);
	} else {
		alert("已经是第一页！");
	}
});
//下一页
$("#xiayiye").click(function() {
	if (pageNo != yema) {
		pageNo++;
		chaxun(pageNo);
	} else {
		alert("已经是最后一页！");
	}
});
//尾页显示
$("#weiye").click(function() {
	pageNo = yema;
	chaxun(pageNo);
});
//查询函数，发送请求并处理返回显示
function chaxun(pageNo) {
	$.post("chaYingServlet", "pageNo=" + pageNo + "&pageSize=" + pageSize, xianshiVip, "json");
}
//回调函数，显示会员信息
function xianshiVip(data) {
	var biao = $("#contextInfo");
	biao.html("<tr><td>营业额来源</td><td>来源编号</td><td>金额</td><td>操作人</td><td>时间</td></tr>");
	for (var i = 0; i < data.length; i++) {
		var chong = "chong" + (i + 1);
		var shan = "shan" + (i + 1);
		biao.append("<tr><td width='162'>" + data[i].laiyuan + "</td><td width='136'>" + data[i].taihao + "</td><td width='94'>" + data[i].price + "" +
			"</td><td width='110'>" + data[i].man + "</td><td width='215'>" + data[i].shi + "</td></tr>");
	}
	biao.append("<tr><td colspan='5'>共&ensp;<span id='gongjiye'></span>&ensp;页&emsp;&emsp;&emsp;第&ensp;<span id='dijiye'></span>&ensp;页</td></tr>")
	$("#gongjiye").html(yema);
	$("#dijiye").html(pageNo);
}