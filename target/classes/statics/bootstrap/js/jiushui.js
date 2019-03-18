var yijian = $("#yijian");
var erjian = $("#erjian");
var sanjian = $("#sanjian");
var sijian = $("#sijian");
var wujian = $("#wujian");
var liujian = $("#liujian");
var yijia = $("#yijia");
var erjia = $("#erjia");
var sanjia = $("#sanjia");
var sijia = $("#sijia");
var wujia = $("#wujia");
var liujia = $("#liujia");
var yik = $("#yik");
var erk = $("#erk");
var sank = $("#sank");
var sik = $("#sik");
var wuk = $("#wuk");
var liuk = $("#liuk");
var zongji = $("#zongji");
var que=$("#queding");
var basePath;
$(document).ready(function() {
	basePath=$("#lujing").val();
	var yiz = parseInt(yik.val()) * 23;
	var erz = parseInt(erk.val()) * 12;
	var sanz = parseInt(sank.val()) * 6;
	var siz = parseInt(sik.val()) * 3;
	var wuz = parseInt(wuk.val()) * 3;
	var liuz = parseInt(liuk.val()) * 1;
	zongji.html(yiz + erz + sanz + siz + wuz + liuz);
});
que.click(function(){
	var zongji=$("#zongji").html();
 	var taihao=$('input:radio[name="taihao"]:checked').val();
 	if(taihao!=null){
 		$.post("jiushuiServlet","zongji="+zongji+"&taihao="+taihao);
 		alert("操作成功!");
 	}else{
 		alert("请选择台号!");
 	}
 });
$("#chong").click(function(){
	yik.val("0");
	erk.val("0");
	sank.val("0");
	sik.val("0");
	wuk.val("0");
	liuk.val("0");
	zongji.html("0");
});

yijian.click(function() {
	if(yik.val() > 0) {
		yik.val(yik.val() - 1);
		var yiz = parseInt(yik.val()) * 23;
		var erz = parseInt(erk.val()) * 12;
		var sanz = parseInt(sank.val()) * 6;
		var siz = parseInt(sik.val()) * 3;
		var wuz = parseInt(wuk.val()) * 3;
		var liuz = parseInt(liuk.val()) * 1;
		zongji.html(yiz + erz + sanz + siz + wuz + liuz);
	} else {
		alert("已达最低数量,不能在减少了");
	}
});
yijia.click(function() {
	var num = parseInt(yik.val());
	yik.val(num + 1);
	var yiz = parseInt(yik.val()) * 23;
	var erz = parseInt(erk.val()) * 12;
	var sanz = parseInt(sank.val()) * 6;
	var siz = parseInt(sik.val()) * 3;
	var wuz = parseInt(wuk.val()) * 3;
	var liuz = parseInt(liuk.val()) * 1;
	zongji.html(yiz + erz + sanz + siz + wuz + liuz);
});

erjian.click(function() {
	if(erk.val() > 0) {
		erk.val(erk.val() - 1);
		var yiz = parseInt(yik.val()) * 23;
		var erz = parseInt(erk.val()) * 12;
		var sanz = parseInt(sank.val()) * 6;
		var siz = parseInt(sik.val()) * 3;
		var wuz = parseInt(wuk.val()) * 3;
		var liuz = parseInt(liuk.val()) * 1;
		zongji.html(yiz + erz + sanz + siz + wuz + liuz);
	} else {
		alert("已达最低数量,不能在减少了");
	}
});
erjia.click(function() {
	var num = parseInt(erk.val());
	erk.val(num + 1);
	var yiz = parseInt(yik.val()) * 23;
	var erz = parseInt(erk.val()) * 12;
	var sanz = parseInt(sank.val()) * 6;
	var siz = parseInt(sik.val()) * 3;
	var wuz = parseInt(wuk.val()) * 3;
	var liuz = parseInt(liuk.val()) * 1;
	zongji.html(yiz + erz + sanz + siz + wuz + liuz);
});
sanjian.click(function() {
	if(sank.val() > 0) {
		sank.val(sank.val() - 1);
		var yiz = parseInt(yik.val()) * 23;
		var erz = parseInt(erk.val()) * 12;
		var sanz = parseInt(sank.val()) * 6;
		var siz = parseInt(sik.val()) * 3;
		var wuz = parseInt(wuk.val()) * 3;
		var liuz = parseInt(liuk.val()) * 1;
		zongji.html(yiz + erz + sanz + siz + wuz + liuz);
	} else {
		alert("已达最低数量,不能在减少了");
	}
});
sanjia.click(function() {
	var num = parseInt(sank.val());
	sank.val(num + 1);
	var yiz = parseInt(yik.val()) * 23;
	var erz = parseInt(erk.val()) * 12;
	var sanz = parseInt(sank.val()) * 6;
	var siz = parseInt(sik.val()) * 3;
	var wuz = parseInt(wuk.val()) * 3;
	var liuz = parseInt(liuk.val()) * 1;
	zongji.html(yiz + erz + sanz + siz + wuz + liuz);
});
sijian.click(function() {
	if(sik.val() > 0) {
		sik.val(sik.val() - 1);
		var yiz = parseInt(yik.val()) * 23;
		var erz = parseInt(erk.val()) * 12;
		var sanz = parseInt(sank.val()) * 6;
		var siz = parseInt(sik.val()) * 3;
		var wuz = parseInt(wuk.val()) * 3;
		var liuz = parseInt(liuk.val()) * 1;
		zongji.html(yiz + erz + sanz + siz + wuz + liuz);
	} else {
		alert("已达最低数量,不能在减少了");
	}
});
sijia.click(function() {
	var num = parseInt(sik.val());
	sik.val(num + 1);
	var yiz = parseInt(yik.val()) * 23;
	var erz = parseInt(erk.val()) * 12;
	var sanz = parseInt(sank.val()) * 6;
	var siz = parseInt(sik.val()) * 3;
	var wuz = parseInt(wuk.val()) * 3;
	var liuz = parseInt(liuk.val()) * 1;
	zongji.html(yiz + erz + sanz + siz + wuz + liuz);
});
wujian.click(function() {
	if(wuk.val() > 0) {
		wuk.val(wuk.val() - 1);
		var yiz = parseInt(yik.val()) * 23;
		var erz = parseInt(erk.val()) * 12;
		var sanz = parseInt(sank.val()) * 6;
		var siz = parseInt(sik.val()) * 3;
		var wuz = parseInt(wuk.val()) * 3;
		var liuz = parseInt(liuk.val()) * 1;
		zongji.html(yiz + erz + sanz + siz + wuz + liuz);
	} else {
		alert("已达最低数量,不能在减少了");
	}
});
wujia.click(function() {
	var num = parseInt(wuk.val());
	wuk.val(num + 1);
	var yiz = parseInt(yik.val()) * 23;
	var erz = parseInt(erk.val()) * 12;
	var sanz = parseInt(sank.val()) * 6;
	var siz = parseInt(sik.val()) * 3;
	var wuz = parseInt(wuk.val()) * 3;
	var liuz = parseInt(liuk.val()) * 1;
	zongji.html(yiz + erz + sanz + siz + wuz + liuz);
});
liujian.click(function() {
	if(liuk.val() > 0) {
		liuk.val(liuk.val() - 1);
		var yiz = parseInt(yik.val()) * 23;
		var erz = parseInt(erk.val()) * 12;
		var sanz = parseInt(sank.val()) * 6;
		var siz = parseInt(sik.val()) * 3;
		var wuz = parseInt(wuk.val()) * 3;
		var liuz = parseInt(liuk.val()) * 1;
		zongji.html(yiz + erz + sanz + siz + wuz + liuz);
	} else {
		alert("已达最低数量,不能在减少了");
	}
});
liujia.click(function() {
	var num = parseInt(liuk.val());
	liuk.val(num + 1);
	var yiz = parseInt(yik.val()) * 23;
	var erz = parseInt(erk.val()) * 12;
	var sanz = parseInt(sank.val()) * 6;
	var siz = parseInt(sik.val()) * 3;
	var wuz = parseInt(wuk.val()) * 3;
	var liuz = parseInt(liuk.val()) * 1;
	zongji.html(yiz + erz + sanz + siz + wuz + liuz);
});