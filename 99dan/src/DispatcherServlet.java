

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String servletPath = request.getServletPath();
		String pageControllerPath = null;
		
		
		System.out.println(servletPath);
		//servletPath 별 분기
		if(servletPath.equals("/ready.do")){
			pageControllerPath = "WEB-INF/views/ready.jsp";
		}else if(servletPath.equals("/main.do")){
			pageControllerPath = "WEB-INF/views/gamePage.jsp";
		}else if(servletPath.equals("/result.do")){
			pageControllerPath = "WEB-INF/views/result.jsp";
		}else{
			pageControllerPath = "WEB-INF/views/home.jsp";
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(pageControllerPath);
		rd.forward(request, response);
		
	}

}
