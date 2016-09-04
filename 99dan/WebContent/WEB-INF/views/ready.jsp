<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<!-- style -->
<style>
#wrapper {
	width: 400px;
	height: 500px;
	margin: 40px auto;
	background: pink;
	text-align: center;
}

#timerWrapper{
	width: 300px;
	height: 100px;
	text-align: center;
	//background: yellow;
	margin-left: auto;
    margin-right: auto;
    margin-top: 150px;
}



#title{
	padding-top: 50px;
}
</style>
<title>Insert title here</title>
<!-- script -->
<!-- jquery import -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

<script>
	$(function(){
		//1. timer
		var timer = function(second){
			$('#timer').html(second);
			--second;
			var interval = setInterval(function(){
				
				$('#timer').html(second);
				--second;
				if(second < 0){
					$('#timer').html("start!");
					clearInterval(interval);
					setTimeout("$(location).attr('href','main.do')",1000);
				}
			}, 1000); //1초마다 새로 시작된다.
		}	
	timer(3);
	});
</script>


</head>

<!-- 여기서 세션도 생성해준다.  -->
<body>
	<%
		//세션에 맞은 갯수, 틀린갯수 저장하기 //세션 시작
		Integer correctNum = 0;
		Integer wrongNum = 0;
		session.setAttribute("correctNum", correctNum);
		session.setAttribute("wrongNum", wrongNum);
	%>
	<div id='wrapper'>
		<h1 id = 'title'>ready</h1>
		<div id = 'timerWrapper'>
			<h1 id = 'timer'></h1>
		</div>
	</div>
</body>


</html>