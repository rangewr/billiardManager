/**
 * 
 */
var basePath;
var $zongji = 0;
$taiHao = $("#taihao");
$kahao = $("#vipNum");
$(document).ready(function() {
	basePath = $("#lujing").val();
	$.post("jieZhangServlet", "taihao=" + $taiHao.val(), callBack, "json");
	function callBack(data) {
		$("#openTime").val(data.openTime);
		$("#usedTime").val(data.usedTime);
		$("#taifei").val(data.taifei);
		$("#jiuShui").val(data.water);
		$("#leiJi").val(data.zongJi);
		$zongji = data.zongJi;
	}
	$("#xianjin").click(function() {
		if (confirm("是否确定使用现金结账？")) {
			$.post("xianjin", "zongji=" + $zongji + "&taihao=" + $taiHao.val(), xianJinCallBack, "json");
		}
	});
	$("#shuaka").click(function() {
		if ($kahao.val() == "") {
			alert("请输入会员卡号!");
		} else {
			$.post("shukaServlet", "kahao=" + $kahao.val(), shuKaCallBack, "json");
		}
	});
	function shuKaCallBack(data) {
		//判断卡号是否存在
		if (data.mname != "wu") {
			//判断密码是否正确
			if (prompt("请输入密码") == data.mpsw) {
				var $discount = data.discount * 1;
				//判断卡内余额是否足够支付
				if ($discount * $zongji < data.yue) {
					var rank = "";
					switch (data.discount * 1) {
					case 0.9:
						rank = "铜卡";
						break;
					case 0.8:
						rank = "银卡";
						break;
					case 0.7:
						rank = "金卡";
						break;
					}
					var bool = confirm("您好," + data.mname + "\n您是尊贵的" + rank + "会员,享受" + data.discount + "折优惠\n打折之后价格为" + ($zongji * data.discount).toFixed(2) + "元\n是否立即结账?");
					if (bool) {
						$.post("afterJieServlet", "kahao=" + $kahao.val() + "&zongji=" + $discount * $zongji + "&taihao=" + $taiHao.val());
						alert("结账成功!\n\n卡内余额" + (data.yue * 1 - $discount * $zongji).toFixed(2));
					}
				} else {
					alert("卡内余额不足\n请先'充值'或使用'现金结账'  !");
				}
			} else {
				alert("密码输入错误!");
			}
		} else {
			alert("会员卡号不存在!");
		}
	}
	function Ca(data) {
	}

	function xianJinCallBack(data) {
		if (data.fan != "0") {
			alert("应收现金" + $zongji + "元\n\n结账成功!");
		} else {
			alert("结账失败!");
		}
	}
});