package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WelcomeServlet extends HttpServlet{
	public WelcomeServlet(){
		System.out.println("WelcomeServlet构造函数");
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		//解决乱码问题
		response.setContentType("text/html;charset=gb2312");
		//IO输出流
		PrintWriter out = response.getWriter();
		out.println("欢迎来到本系统！");
		
		System.out.println("WelcomeServlet.doGet函数");		
	}	
}

