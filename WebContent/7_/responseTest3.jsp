<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
  <html>
  <body>
	��ӭ����ѧ������ϵͳ!!!<br>
	<%
		//����һ��
		//String stuname = request.getParameter("stuname");
		//stuname = new String(stuname.getBytes("ISO-8859-1"),"gb2312");
		//out.println("����ѧ�������ǣ�"+stuname+"<br>");
		//��������
		//Ҫ��1.ȡֵ֮ǰ����request�ı��룻2.��form���õ�method.post�����ύ
		request.setCharacterEncoding("gb2312");
   		out.println("����ѧ�������ǣ�"+request.getParameter("stuname")+"<br>");
   	%>
  </body>
  </html>