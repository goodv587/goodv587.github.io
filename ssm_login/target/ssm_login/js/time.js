function showTime(){
	var now = new Date();
	var year = now.getFullYear();
	var month = now.getMonth()+1;
	var day = now.getDate();
	var hour = now.getHours();
	var minute = now.getMinutes();
	var second = now.getSeconds();
	var s = year+"-"+month+"-"+day+" "+hour+":"+minute+":"+second;
	var obj = document.getElementById("time");
	obj.innerHTML = s;
	
	setTimeout("showTime()", 1000);
}