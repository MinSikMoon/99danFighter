<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- script -->
<!-- jquery import -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
	$(function(){
		//1. timer
		
		var timer = function(second){
			$('#header').html(second);
			--second;
			var interval = setInterval(function(){
				
				$('#header').html(second);
				--second;
				if(second < 0){
					clearInterval(interval);
					setTimeout("$(location).attr('href','result.do')",1000);
				}
				
			}, 1000); //1초마다 새로 시작된다.
		}	
	timer(30);
	});
</script>
<style>
#header{
	background-color:yellow;
}
</style>
<div id = 'header'></div>