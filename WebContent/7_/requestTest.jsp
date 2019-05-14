<%@ page language="java"  pageEncoding="gb2312"%>
  <html>
  <body>
  
  	<!-- 获取客户端的基本信息 -->
  	<%	// javax.servlet.http.HttpServletRequest  %>
  	客户端的提交方式: <%=request.getMethod() %><br>
  	客户端请求的URL地址: <%=request.getRequestURI() %><br>
	客户端与服务器通信的协议名称: <%=request.getProtocol() %><br>
	客户端请求服务器文件的路径: <%=request.getServletPath() %><br>
	URL的查询部分: <%=request.getQueryString() %><br>
	服务器的名称: <%=request.getServerName() %><br>
	服务器口号: <%=request.getServerPort() %><br>
	远程客户端的IP地址: <%=request.getRemoteAddr()%><br>
	<% //以上获得值全都是String类型 ,<%= 是JSP表达式 %>
	<% //String getParameter(String name)获得客户端传给服务器的name参数的值 %>
	<% //String[] getParameterValues(String name),以数组字符串形式返回指定参数的值 %>
	<%=request.getParameter(a) %><br>
	<%=request.getParameterValues(b) %><br>
	
	<%!  //JSP声明
		String a;
		String b;
	%>
  </body>
  </html>
  
