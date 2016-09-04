<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<title>메인 게임플레이 화면</title>
<!-- style -->
<style>
.container {
	width: 400px;
	height: 400px;
	padding-left: 31px;
	padding-top: 0px;
}

.container ul {
	padding: 0; /* remove default padding and all margins! */
	margin: 0;
	list-style-type: none; /* remove the • */
}

.container ul li {
	width: 100px;
	height: 100px;
	padding: auto 0;
	border: solid black 2px;
	float: left;
	margin: 5px;
	font-size:40px;
	line-height:200%;
}

#show{
	width:400px;
	height: 90px;
	
	margin-top:0;
	margin-bottom: 0px;
	font-size: 50px;
	padding-top: 20px;
}

li:hover{
	background-color:#6666ff;
	
}
</style>

<!-- script -->
<script>
	$(function(){
		
		var answer; //전역 변수로 설정해준다.
		
		//난수 중복생성 방지용 배열==================================
		var randomArr = new Array(82); //0인덱스는 쓰지 않기에 
		for(var i=0; i<randomArr.length; i++){
			randomArr[i] = i;
		}
		
		//2. 랜덤 구구단 화면에 뿌려주는 펑션=============================
		var ggd = function(){
			//배열 초기화
			for(var i=0; i<randomArr.length; i++){
				randomArr[i] = i;
			}
			var g1 = Math.floor(Math.random()*9) + 1; //g1 구하기
			var g2 = Math.floor(Math.random()*9) + 1; //g2 구하기
			var answerPosition = Math.floor(Math.random()*9); //정답의 포지션 구하기 0부터 9까지
			 answer = g1*g2; //정답 구하기
			
			//상단에 곱할 숫자를 나타내 준다.
			$('#show').text(g1 +' X ' + g2);
			
			//숫자들을 뿌려준다. 뿌려주는 것 끝
			$('#getId li').each(function(index){
				if(index == answerPosition){
					$(this).text(answer);
					return true;
				}
								
				var wrongAnswer = Math.floor(Math.random()*81) + 1;
				//오답 난수가 정답과 같거나 중복으로 뽑혔다면 다시 뽑아주고 배열에서 빼준다. 
				while(wrongAnswer == answer || randomArr[wrongAnswer] == 0){
					wrongAnswer = Math.floor(Math.random()*9) + 1; 
				}
				randomArr[wrongAnswer] = 0; //뽑힌 수는 다시 안 뽑는다. 
				$(this).text(wrongAnswer);
			});
		}
		
		//3. 클릭 콜백함수================================================================
		$('#getId li').click(function(){
			var gettedData = $(this).html(); //클릭을 한 네모칸의 숫자
			
			if(gettedData == answer){
				//console.log('correct');
				 $.ajax({
					type: 'post',
					url: 'sessionProcess.jsp',
					data: "correctNum" 
				}); 
			}else{
				//console.log('wrong');
				 $.ajax({
					type: 'post',
					url: 'sessionProcess.jsp',
					data: "wrongNum" 
					
				}); 
			}
			ggd();
			
		});
	
		
		ggd(); //첫 화면을 위해서. 한번 화면에 뿌려줌.	
	});
	
	

</script>

</head>
<body>
	<h1 id = 'show'></h1>
	
	<div class = 'container'>
		<ul id = 'getId'>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	
</body>
</html>