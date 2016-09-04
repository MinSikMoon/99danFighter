package com.sessionProcess;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/sessionProcess.do")
public class SessionProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = (HttpSession)request.getSession();
		
		if(request.getParameter("correctNum") != null){
			Integer correctNum = (Integer)session.getAttribute("correctNum");
			correctNum++;
			session.setAttribute("correctNum", correctNum);
		}else{
			Integer wrongNum = (Integer)session.getAttribute("wrongNum");
			wrongNum++;
			session.setAttribute("wrongNum", wrongNum);
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("include/main.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
