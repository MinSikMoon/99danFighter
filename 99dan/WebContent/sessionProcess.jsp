<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	if (request.getParameter("correctNum") != null) {
		Integer correctNum = (Integer) session.getAttribute("correctNum");
		correctNum++;
		session.setAttribute("correctNum", correctNum);
	} else {
		Integer wrongNum = (Integer) session.getAttribute("wrongNum");
		wrongNum++;
		session.setAttribute("wrongNum", wrongNum);
	}
%>