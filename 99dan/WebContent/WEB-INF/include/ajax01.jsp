<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--jquery 참조  -->
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<script>
	var query = {
		name: '문민식',
		id: '아가동'
	};
		
	$(function(){
		$('#b1').click(function(){
			$.ajax({
				//1. request type
				type: 'POST',
				//2. request할 프로그램
				url: 'process04.jsp',
				//3. 전송할 데이터
				data: query,
				//4. 요청의 실행결과 콜백 
				success: function(data){
					$('#result').html(data);
				}
				
			});
		});
	});
</script>


<meta charset="UTF-8">
<title>ajax의 post사용해보기</title>
</head>
<!--=================================body================================-->
<body>
<button id = 'b1'>누르면 load됨</button>
<div id = 'result'></div>
</body>

</html>