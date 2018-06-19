<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function myFunction2() {
		if(document.getElementById("id1").value==''){
			return ;
		}
		
		document.getElementById("id2").value = document.getElementById("id2").value
				+ '1';
		a = document.getElementById("id2").value.length;
		x = document.getElementById("div_1").innerHTML;
		y0 = "<p>" + document.getElementById("id1").value + "</p>";
		div = '<div id="div_1_'+a+'">';
		button_del = '<button type="button" onclick="delete_div(' + a
				+ ')">删除测试</button>';
		button_change = '<button type="button" onclick="change_0(' + a
				+ ')">更改测试</button>';
		change_div='<div id="div_1_'+a+'_ch"></div>';
		y = div + y0 + button_del + button_change + change_div + "</div>";
		document.getElementById("id1").value = "";
		document.getElementById('div_1').innerHTML = x + y;
	}
	
	function delete_div(num) {
		var box = document.getElementById("div_1_" + num);
		box.parentNode.removeChild(box);
	}
	
	function change_0(num){
		x = '<textarea rows="3" cols="20" id="div_1_'+num+'_ch_input"></textarea>';
		y = '<button type="button" onclick="change_1('+num+')">确定更改</button>';
		document.getElementById('div_1_'+num+'_ch').innerHTML = x+y;
	}
	
	function change_1(num){
		if(document.getElementById('div_1_'+num+'_ch_input').value==''){
			return ;
		}
		y0 = "<p>" + document.getElementById('div_1_'+num+'_ch_input').value + "</p>";
		this.delete_div(num+'_ch_input');
		
		button_del = '<button type="button" onclick="delete_div(' + num
				+ ')">删除测试</button>';
		button_change = '<button type="button" onclick="change_0(' + num
				+ ')">更改测试</button>';
		change_div='<div id="div_1_'+a+'_ch"></div>';
		y = y0 + button_del + button_change + change_div;
		document.getElementById('div_1_'+num).innerHTML = y;
	}
	function myFunction4(){
		var s=Number(document.getElementById("id2").value);
		document.getElementById("id2").value=s+1
		alert(document.getElementById("id2").value)
	}
</script>
</head>
<body>
	<input type="hidden" value="" id="id2" />
	<div id="div_1"></div>
	<button type="button" onclick="myFunction2()">添加段落</button>
	<br>
	<textarea rows="3" cols="20" id="id1"></textarea>
</body>
</html>