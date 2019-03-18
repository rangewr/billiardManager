/**
 * 
 */
var basePath;
$(document).ready(function() {
	basePath = $("#lujing").val();
	$("#deng").click(function() {
		var $name = $("#userName");
		var $pwd = $("#pwd");
		if ($name.val() != null && $pwd.val() != null) {
			$.post("loginServlet", "name=" + $name.val() + "&pwd=" + $pwd.val(), callBack, "json");
		} else {
			alert("用户名或密码不能为空!");
		}
	});

	function callBack(data) {
		if (data.result == "you") {
			alert("登录成功!");
			self.location = basePath + "shouye.jsp";
		} else {
			alert("账户或密码错误!");
		}
	}
});