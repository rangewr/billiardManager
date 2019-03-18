/**
 * 
 */

var basePath;
var pageNo = 1;
var pageSize = 4;
var pageCount = 0;
var yema=0;
//页面初始化加载，获取路径和总页码数量
$(document).ready(function() {
	basePath = $("#lujing").val();
	//获取页码总数
	chazong();
});

function chazong(){
	$.post("getPageCount", "pageSize=" + pageSize, setPageCount, "json");
}
//对页码总页数赋值
function setPageCount(data) {
	pageCount = data.count * 1;
	if(pageCount%pageSize==0){
		yema=pageCount/pageSize;
	}else{
		yema=parseInt(pageCount/pageSize)+1;
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
	$.post("chaVIPServlet", "pageNo=" + pageNo + "&pageSize=" + pageSize, xianshiVip, "json");
}
//回调函数，显示会员信息
function xianshiVip(data) {
	var biao = $("#contextInfo");
	biao.html("<tr><td>会员卡号</td><td>会员姓名</td><td>联系方式</td><td>会员级别</td><td>享受折扣</td><td>卡内余额</td><td colspan='2'>操作</td></tr>");
	for (var i = 0; i < data.length; i++) {
		var chong = "chong" + (i + 1);
		var shan = "shan" + (i + 1);
		biao.append("<tr><td>" + data[i].memid + "</td><td>" + data[i].mname + "</td><td width='130'>" + data[i].mtel + "" +
			"</td><td>" + data[i].mrank + "</td><td>" + data[i].discount + "</td><td>" + data[i].yue + "" +
			"</td><td><a style='text-decoration:none;color:green' href='javascript:chongzhi(" + data[i].memid + ")'>充值</a></td>" +
			"<td><a style='text-decoration:none;color:red' href='javascript:shanchu(" + data[i].memid + ")'>删除</a></td></tr>");
	}
	biao.append("<tr><td colspan='8'>共&ensp;<span id='gongjiye'></span>&ensp;页&emsp;&emsp;&emsp;第&ensp;<span id='dijiye'></span>&ensp;页</td></tr>")
	$("#gongjiye").html(yema);
	$("#dijiye").html(pageNo);
}


function chongzhi(num) {
	var price = prompt("您将对卡号为" + num + "的会员充值!\n\n请输入充值金额");
	if (price != null) {
		$.post("chongServlet", "kahao=" + num + "&jine=" + price);
		chaxun(pageNo);
		alert("充值成功!");
	} else {
		alert("请输入充值金额!");
	}
}
function shanchu(num) {
	if (confirm("是否删除会员" + num)) {
		$.post("shanServlet", "kahao=" + num);
		pageNo=1;
		chaxun(pageNo);
		chazong();
		$("#gongjiye").html(yema);
		alert("删除成功!");
	}
}