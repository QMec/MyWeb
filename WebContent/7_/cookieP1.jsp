<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
	//����һ��������
	String str = "15";
	int number = Integer.parseInt(str);
 %>
 �����ֵ�ƽ��Ϊ��<%=number*number %><HR>
 <%
 	//��str����Cookie
 	Cookie cookie = new Cookie("number",str);
 	//����Cookie�Ĵ����Ϊ600��
 	//���ʱ�������˭��˵�ģ�����զ����
 	cookie.setMaxAge(600);
 	//��Cookie�����ڿͻ���
 	response.addCookie(cookie);
 %>
 <a href="cookieP2.jsp">����p2</a>
