/**
 * 
 */
var basePath;
$(document).ready(function() {
	basePath=$("#lujing").val();
	var $name = $("#userName");
	var $pwd = $("#pwd");
	var $m = $("#manager");
	var $s = $("#service");
	$name.blur(yanName);
	$pwd.blur(yanMi);
	$("form").submit(function() {
		var b = false;
		if (yanName())
			b = true;
		if (yanMi())
			b = true;
		if (b) {
			alert("注册成功!");
		}
		return b;
	});

	function yanMi() {
		$("#bluePwd").html("");
		$("#redPwd").html("");
		if ($pwd.val() == "") {
			$("#redPwd").html("! 密码不能为空");
			return false;
		} else {
			$("#bluePwd").html("√");
		}
		return true;
	}


	var bool = false;
	function yanName() {
		$("#blueName").html("");
		$("#redName").html("");
		if ($name.val() == "") {
			$("#redName").html("! 用户名不能为空");
			bool = false;
		} else {
			$.ajax({
				"url" : "zhuServlet",
				"type" : "POST",
				"data" : "name=" + $name.val(),
				"dataType" : "json",
				"success" : callBack
			});
		}
		if (bool) {
			return true;
		} else {
			return false;
		}
	}
	function callBack(data) {
		if (data.result == "you") {
			$("#redName").html("! 用户名已被占用");
			bool = false;
		}
		else {
			$("#blueName").html("√");
			bool = true;
		}
	}



});