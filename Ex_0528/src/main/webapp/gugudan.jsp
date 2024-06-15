<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/httpRequest.js"></script>
<script type="text/javascript">
	function send (){
		let dan = document.getElmentById("dan").value;
		let url = "gugudan_ajax.jsp";
		let param = "dan="+dan;
		
		sendRequest(url,param,resulFn,"get");
	}
	
	function resultFn(){
		alert("call back");
	}
</script>
</head>
<body>
	단 : <input id ="dan">
	<input type ="button" value="결과보기" onclick ="send()">
	<br>
	<div id="disp"></div>
</body>
</html>