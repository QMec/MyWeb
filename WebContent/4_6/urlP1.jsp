<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" %>
<%
	String str="12";
	int number=Integer.parseInt(str);
%>
该数字的平方为：<%= number*number %><hr>
<a href="urlP2.jsp?number=<%= number%>">到达P2</a>