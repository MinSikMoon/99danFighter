<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<style>
	.imported {
		border: solid pink 2px;
	}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
	
<body>
	 아래는 결과 화면입니다. <br>
	<div class = 'imported'>
		이름: <%=request.getParameter("name")%> <br>
		아이디: <%=request.getParameter("id")%>
	</div> 
</body>
</html>