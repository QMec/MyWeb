<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
    <%@ page language = "java" import = "java.sql.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>
</head>
<body>
<%
// request.setCharacterEncoding("UTF-8");
// String number = request.getParameter("number");
// String name = request.getParameter("name");

Class.forName("com.mysql.jdbc.Driver");//��������
Connection conn = DriverManager.getConnection(//��������
		"jdbc:mysql://localhost:3306/member?useSSL=true&characterEncoding=gb2312", "root", "123456");
Statement stat = conn.createStatement();  //����һ��sql������
String sql = "SELECT number,name FROM mess ";
ResultSet rs = stat.executeQuery(sql);   //��ѯ
while(rs.next()){
	String stuno = rs.getString("number");
	String stuname = rs.getString("name");
	//String stusex = rs.getString("STUSEX");
	out.println(stuno + "" + stuname +"<BR> ");
}
stat.close();
conn.close();
%>

</body>
</html>