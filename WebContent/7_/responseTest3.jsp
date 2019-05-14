<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
  <html>
  <body>
	欢迎来到学生管理系统!!!<br>
	<%
		//方法一：
		//String stuname = request.getParameter("stuname");
		//stuname = new String(stuname.getBytes("ISO-8859-1"),"gb2312");
		//out.println("输入学生姓名是："+stuname+"<br>");
		//方法二：
		//要求：1.取值之前设置request的编码；2.表单form采用的method.post方法提交
		request.setCharacterEncoding("gb2312");
   		out.println("输入学生姓名是："+request.getParameter("stuname")+"<br>");
   	%>
  </body>
  </html>