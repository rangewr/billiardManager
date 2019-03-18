var num = $("#num");//账号
var pwd = $("#pwd");//密码
var apwd = $("#apwd");//重复输入密码
var jine = $("#jine");//充值金额
var name = $("#ming");//会员姓名
var tel = $("#tel");//会员电话号
var basePath;
$(document).ready(function(){
	basePath=$("#lujing").val();//获取路径
});
$("#qued").click(function() {
	var bool = true;
	if (!num.blur())
		bool = false;
	if (!pwd.blur())
		bool = false;
	if (!apwd.blur())
		bool = false;
	if (!jine.blur())
		bool = false;
	if (bool) {
		$.post("addvipServlet", "num=" + num.val() + "&pwd=" + pwd.val() + "&jine=" + jine.val() + "&name=" + $("#ming").val() + "&tel=" + tel.val(),after);
	}

});
function after(){
	alert("新增成功!");
	//self.location = basePath+"vipShow.jsp";
}

$("#res").click(function() {
	//重置键点击后输入框内容清空
	num.val("");
	pwd.val("");
	apwd.val("");
	jine.val("");
	tel.val("");
	$("#ming").val("");
	$("#aa").html("");
	$("#bb").html("");
	$("#cc").html("");
	$("#dd").html("");
});

num.blur(function() {
	$("#aa").html("");
	if (num.val() == "") {
		$("#aa").html("卡号不能为空");
		return false;
	} else if (num.val().length != 5) {
		$("#aa").html("卡号长度必须为5位");
		return false;
	} else {
		$.post("kahaoServlet", "num=" + num.val(), kahaoCallBack, "json");
	}

});
function kahaoCallBack(data) {
	if (data.memid != "0") {
		$("#aa").html("卡号已被占用");
		return false;
	} else {
		$("#aa").html("<span style='color:blue;font:normal bold 16px \"微软雅黑\";'>√</span>");
		return true;
	}
}
pwd.blur(function() {
	if (pwd.val() == "") {
		$("#bb").html("密码不能为空!");
		return false;
	} else {
		$("#bb").html("<span style='color:blue;font:normal bold 16px \"微软雅黑\";'>√</span>");
	}
	return true;
});
apwd.blur(function() {
	if (apwd.val() == "") {
		$("#cc").html("密码不能为空!");
		return false;
	}
	if (apwd.val() != pwd.val()) {
		$("#cc").html("两次密码不一致!");
		return false;
	} else {
		$("#cc").html("<span style='color:blue;font:normal bold 16px \"微软雅黑\";'>√</span>");
	}
	return true;
});
jine.blur(function() {
	if (jine.val() == "") {
		$("#dd").html("充值金额不能为空!");
		return false;
	}
	var j = parseInt(jine.val());
	if (j < 0) {
		$("#dd").html("充值金额不能为负数!");
		return false;
	} else {
		$("#dd").html("<span style='color:blue;font:normal bold 16px \"微软雅黑\";'>√</span>");
	}
	return true;
});