<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
  <html>
  <body>
    <%
    	//ȫ����ʾ�ͻ��˻����в�����ҳ��Ŀ���
    	response.setHeader("Pragma","No-cache");
    	response.setHeader("Cache-Control","no-cache");
    	response.setDateHeader("Expires",0);
    	
    	//ÿ��5���Ӷ���ˢ��һ��
    	response.setHeader("Refresh","5");
    %>    
  </body>
  </html>
