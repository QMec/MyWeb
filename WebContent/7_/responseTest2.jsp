<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
  <html>
  <body>
    <%	// javax.servlet.http.HttpServletResponse  %>
  	<% //����response��������ض��� %>
	<%	//response���ö���redirect�ض���
		//response.sendRedirect("responseTesdt3.jsp");//���·����
		//Ҳ��������ڷ������ľ���·��"/MyWeb/7_/responseTest3.jsp"
		//�����Զ����ⲿ��Դ�������磺"https://www.baidu.com",��Ȼ�Ǿ���·����
	 %>
	 <% //JSP���������ã�ҳ����ת��
	 	//1.ֻ�����ļ���������ݣ���ͬ�������ᱨ��2.�Զ���鱻�����ļ��ı仯
	 %>
	 
	 <% //<jsp:forward page="responseTest3.jsp"></jsp:forward>   %>
	 
	 
	 <% 
	 	response.sendError(404);
	 	//��������������HTTP״̬��ĳ�����Ϣ
		//404(��Դ������),403(��Դ������),401,400(�﷨����),500(δ֪����) 
		%>
  </body>
  </html>




