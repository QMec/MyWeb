<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
  <html>
  <body>
    <%	// javax.servlet.http.HttpServletResponse  %>
  	<% //利用response对象进行重定向 %>
	<%	//response内置对象，redirect重定向
		//response.sendRedirect("responseTesdt3.jsp");//相对路径，
		//也可是针对于服务器的绝对路径"/MyWeb/7_/responseTest3.jsp"
		//还可以定向到外部资源，外链如："https://www.baidu.com",自然是绝对路径了
	 %>
	 <% //JSP动作，作用：页面跳转，
	 	//1.只包含文件的输出内容，相同变量不会报错；2.自动检查被包含文件的变化
	 %>
	 
	 <% //<jsp:forward page="responseTest3.jsp"></jsp:forward>   %>
	 
	 
	 <% 
	 	response.sendError(404);
	 	//还可以用来发送HTTP状态码的出错信息
		//404(资源不存在),403(资源不可用),401,400(语法错误),500(未知错误) 
		%>
  </body>
  </html>




