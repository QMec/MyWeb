<%@ page language="java"  pageEncoding="gb2312"%>
  <html>
  <body>
  
  	<!-- ��ȡ�ͻ��˵Ļ�����Ϣ -->
  	<%	// javax.servlet.http.HttpServletRequest  %>
  	�ͻ��˵��ύ��ʽ: <%=request.getMethod() %><br>
  	�ͻ��������URL��ַ: <%=request.getRequestURI() %><br>
	�ͻ����������ͨ�ŵ�Э������: <%=request.getProtocol() %><br>
	�ͻ�������������ļ���·��: <%=request.getServletPath() %><br>
	URL�Ĳ�ѯ����: <%=request.getQueryString() %><br>
	������������: <%=request.getServerName() %><br>
	�������ں�: <%=request.getServerPort() %><br>
	Զ�̿ͻ��˵�IP��ַ: <%=request.getRemoteAddr()%><br>
	<% //���ϻ��ֵȫ����String���� ,<%= ��JSP���ʽ %>
	<% //String getParameter(String name)��ÿͻ��˴�����������name������ֵ %>
	<% //String[] getParameterValues(String name),�������ַ�����ʽ����ָ��������ֵ %>
	<%=request.getParameter(a) %><br>
	<%=request.getParameterValues(b) %><br>
	
	<%!  //JSP����
		String a;
		String b;
	%>
  </body>
  </html>
  
