<!-- ����������һ����½ҳ�棬���ύ�������ݿ��ѯҳ�� -->

<%@ page language="java" contentType="text/html; charset=gb2312" %>

<html>
	<body>
       
                      ���¼<br>
                      
        <!-- method.postʹURL��ֵ��ַ�����ɼ� -->
        <!-- action.·�� ʹ�ύ֮����ø�ҳ�洦���������� -->
        <form action="database.jsp" method="post">  
        
                     ����������ѧ�ţ�<input type ="text" name="stunumber"><br>  <!-- type.text��ͨ�ı��� -->
                     ����������������<input type ="text" name="stuname"><br>
                     
        <input type ="submit" value="��¼">   <!-- type.submit�ύ��ť -->
        </form>

        <!-- ������������֤���룬Ȼ���½��һ��ҳ��Ҳ���ԵΣ����Ҿ�Ҫ����ҳ��-->
        
        <%@ include file="information.jsp" %>
  </body>
</html>
