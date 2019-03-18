/**
 * 
 */
var basePath;
$(document).ready(function() {
	basePath = $("#lujing").val();
	$.post("dayangServlet", callBack, "json");
});

function callBack(data) {
	$("#taifei").val(data.taifei);
	$("#newvip").val(data.newvip);
	$("#chong").val(data.chong);
	$("#wai").val(data.wai);
	$("#zong").html(data.zong);
}
$("#dayang").click(function() {
	$.post("guanbiServlet", "dayang=dayang", guanCallBack);
});
function guanCallBack(data) {
	top.location = basePath + "goodbye.jsp";
}