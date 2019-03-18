
var min = new Array(5);
var hour = new Array(5);
var back = new Array(5);
var $jishi = new Array($("#yiyi span:eq(0)"), $("#erer span:eq(0)"), $("#sansan span:eq(0)"), $("#sisi span:eq(0)"), $("#wuwu span:eq(0)"));
var $jifei = new Array($("#yiyi span:eq(1)"), $("#erer span:eq(1)"), $("#sansan span:eq(1)"), $("#sisi span:eq(1)"), $("#wuwu span:eq(1)"));
var taiNum;
var call;
var basePath;
var money = 15;
var zongji = new Array(5);
$(document).ready(function() {
	basePath = $("#lujing").val();
	$.post("initServlet", ininCallBack, "json");
});
function ininCallBack(data) {
	if (data.yi != "0") {
		min[0] = parseInt(data.yi * 1 % 60);
		hour[0] = parseInt(data.yi * 1 / 60);
		jishi1();
		back[0] = setInterval("jishi1()", 60000);
	}
	if (data.er != "0") {
		min[1] = parseInt(data.er * 1 % 60);
		hour[1] = parseInt(data.er * 1 / 60);
		jishi2();
		back[1] = setInterval("jishi2()", 60000);
	}
	if (data.san != "0") {
		min[2] = parseInt(data.san * 1 % 60);
		hour[2] = parseInt(data.san * 1 / 60);
		jishi3();
		back[2] = setInterval("jishi3()", 60000);
	}
	if (data.si != "0") {
		min[3] = parseInt(data.si * 1 % 60);
		hour[3] = parseInt(data.si * 1 / 60);
		jishi4();
		back[3] = setInterval("jishi4()", 60000);
	}
	if (data.wu != "0") {
		min[4] = parseInt(data.wu * 1 % 60);
		hour[4] = parseInt(data.wu * 1 / 60);
		jishi5();
		back[4] = setInterval("jishi5()", 60000);
	}
}
function kaiguan(num) {
	taiNum = num;
	switch (num) {
	case 1:
		call = callBack1;
		if ($jishi[0].html() == "") {
			if (confirm("您将开启" + num + "号台\n\n每小时" + money + "元\n\n确定开启?")) {
				$jishi[0].html("0小时0分");
				$jifei[0].html("0元");
				min[0] = 0;
				hour[0] = 0;
				$.post("open", "taihao=" + num, call, "json");
			}
		} else {
			if (confirm("您将为" + num + "号台结账\n\n确定结账?")) {
				clearInterval(back[0]);
				self.location = basePath + "jieZhang.jsp?num=" + num;
				$jishi[0].html("");
				$jifei[0].html("");
				min[0] = 0;
				hour[0] = 0;
			}
		}
		break;
	case 2:
		call = callBack2;
		if ($jishi[1].html() == "") {
			if (confirm("您将开启" + num + "号台\n\n每小时" + money + "元\n\n确定开启?")) {
				$jishi[1].html("0小时0分");
				$jifei[1].html("0元");
				min[1] = 0;
				hour[1] = 0;
				$.post("open", "taihao=" + num, call, "json");
			}
		} else {
			if (confirm("您将为" + num + "号台结账\n\n确定结账?")) {
				clearInterval(back[1]);
				self.location = basePath + "jieZhang.jsp?num=" + num;
				$jishi[1].html("");
				$jifei[1].html("");
				min[1] = 0;
				hour[1] = 0;
			}
		}
		break;
	case 3:
		call = callBack3;
		if ($jishi[2].html() == "") {
			if (confirm("您将开启" + num + "号台\n\n每小时" + money + "元\n\n确定开启?")) {
				$jishi[2].html("0小时0分");
				$jifei[2].html("0元");
				min[2] = 0;
				hour[2] = 0;
				$.post("open", "taihao=" + num, call, "json");
			}
		} else {
			if (confirm("您将为" + num + "号台结账\n\n确定结账?")) {
				clearInterval(back[2]);
				self.location = basePath + "jieZhang.jsp?num=" + num;
				$jishi[2].html("");
				$jifei[2].html("");
				min[2] = 0;
				hour[2] = 0;
			}
		}
		break;
	case 4:
		call = callBack4;
		if ($jishi[3].html() == "") {
			if (confirm("您将开启" + num + "号台\n\n每小时" + money + "元\n\n确定开启?")) {
				$jishi[3].html("0小时0分");
				$jifei[3].html("0元");
				min[3] = 0;
				hour[3] = 0;
				$.post("open", "taihao=" + num, call, "json");
			}
		} else {
			if (confirm("您将为" + num + "号台结账\n\n确定结账?")) {
				clearInterval(back[3]);
				self.location = basePath + "jieZhang.jsp?num=" + num;
				$jishi[3].html("");
				$jifei[3].html("");
				min[3] = 0;
				hour[3] = 0;
			}
		}
		break;
	case 5:
		call = callBack5;
		if ($jishi[4].html() == "") {
			if (confirm("您将开启" + num + "号台\n\n每小时" + money + "元\n\n确定开启?")) {
				$jishi[4].html("0小时0分");
				$jifei[4].html("0元");
				min[4] = 0;
				hour[4] = 0;
				$.post("open", "taihao=" + num, call, "json");
			}
		} else {
			if (confirm("您将为" + num + "号台结账\n\n确定结账?")) {
				clearInterval(back[4]);
				self.location = basePath + "jieZhang.jsp?num=" + num;
				$jishi[4].html("");
				$jifei[4].html("");
				min[4] = 0;
				hour[4] = 0;
			}
		}
		break;
	}
}
function callBack1(data) {
	if (data.xin != 0) {
		jishi1();
		back[0] = setInterval("jishi1()", 60000);
	}
}
function callBack2(data) {
	if (data.xin != 0) {
		jishi2();
		back[1] = setInterval("jishi2()", 60000);
	}
}
function callBack3(data) {
	if (data.xin != 0) {
		jishi3();
		back[2] = setInterval("jishi3()", 60000);
	}
}
function callBack4(data) {
	if (data.xin != 0) {
		jishi4();
		back[3] = setInterval("jishi4()", 60000);
	}
}
function callBack5(data) {
	if (data.xin != 0) {
		jishi5();
		back[4] = setInterval("jishi5()", 60000);
	}
}


function jishi1() {
	if (++min[0] >= 60) {
		min[0] = 0;
		hour[0]++;
	}
	$jishi[0].html(hour[0] + "小时" + min[0] + "分");
	zongji[0] = parseInt((hour[0] * 60 + min[0]) / 4 + 1);
	$jifei[0].html(zongji[0] + "元");
}
function jishi2() {
	if (++min[1] >= 60) {
		min[1] = 0;
		hour[1]++;
	}
	$jishi[1].html(hour[1] + "小时" + min[1] + "分");
	zongji[1] = parseInt((hour[1] * 60 + min[1]) / 4 + 1);
	$jifei[1].html(zongji[1] + "元");
}
function jishi3() {
	if (++min[2] >= 60) {
		min[2] = 0;
		hour[2]++;
	}
	$jishi[2].html(hour[2] + "小时" + min[2] + "分");
	zongji[2] = parseInt((hour[2] * 60 + min[2]) / 4 + 1);
	$jifei[2].html(zongji[2] + "元");
}
function jishi4() {
	if (++min[3] >= 60) {
		min[3] = 0;
		hour[3]++;
	}
	$jishi[3].html(hour[3] + "小时" + min[3] + "分");

	zongji[3] = parseInt((hour[3] * 60 + min[3]) / 4 + 1);
	$jifei[3].html(zongji[3] + "元");
}
function jishi5() {
	if (++min[4] >= 60) {
		min[4] = 0;
		hour[4]++;
	}
	$jishi[4].html(hour[4] + "小时" + min[4] + "分");
	zongji[4] = parseInt((hour[4] * 60 + min[4]) / 4 + 1);
	$jifei[4].html(zongji[4] + "元");
}