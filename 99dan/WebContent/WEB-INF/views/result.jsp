<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
#wrapper {
	width: 400px;
	height: 500px;
	margin: 40px auto;
	background: pink;
	text-align: center;
}

#title {
	margin-top:0px;
	margin-left: auto;
    margin-right: auto

}


</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>this is home</title>

</head>

<!-- ========================================================================= -->
<body>
	<div id='wrapper'>
		
		<h1 id='title'><br><br><br><br>결과화면</h1>
		<%
			int correctNum = (Integer)session.getAttribute("correctNum");
			int wrongNum = (Integer)session.getAttribute("wrongNum");
			int totalNum = correctNum + wrongNum;
		%>
		<%= correctNum + "/" + totalNum %>
		<% session.invalidate(); %>
		<form action = 'ready.do' id = 'b1'>
			<input type = 'submit' value = '다시하기'>
		</form>
		
		<form action = 'home' id = 'b1'>
			<input type = 'submit' value = '홈으로'>
		</form>

	</div>

</body>
</html>