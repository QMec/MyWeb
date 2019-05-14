<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
	//获得number
	String str=request.getParameter("number");
	int number = Integer.parseInt(str);
	
%>
该数字的立方为：<%= number*number*number%><hr>