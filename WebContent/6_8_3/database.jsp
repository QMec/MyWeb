<!-- �ⲿ��������MySQL���ݿ�Ĵ��룬���ҽ����˲�ѯ���� -->

<%@ page language="java" import="java.sql.*"
	contentType="text/html; charset=gb2312"%>

<!-- ��requestת��ʹ֧֮������Ŷ��Ҫ�󣬲�����method.post����getPatameter֮ǰʹ�� -->
<%request.setCharacterEncoding("gb2312");%>
<%
	String stunumber = request.getParameter("stunumber");
	String stuname = request.getParameter("stuname");
	
	//�����������
	//System.out.print(stunumber);
	//System.out.print(stuname);
	
	if (stunumber != null && stuname != null) {
		Class.forName("com.mysql.jdbc.Driver");
		
		//�޸ľ����ֵ��member���ݿ�����root�û����������Լ����MySQL�ĵ�½����
		Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/member?useSSL=true&characterEncoding=gb2312", "root", "123456");
		
		//PreparedStatementԤ����������
		PreparedStatement stat = null;
		ResultSet rs = null;
		
		//mess����,number��������name������
		String sql = "SELECT * FROM mess WHERE number=?&&name=?";
		
		//ʹ��Ԥ�������
		stat = con.prepareStatement(sql);
		
		//��ֵ����һ����ͨ�������˳���Ӧ1���ڶ�����ͨ�������˳���Ӧ2
		stat.setString(1, stunumber);
		stat.setString(2, stuname);
		
		//��ʼ��ѯ
		rs = stat.executeQuery();
		if (rs.next()) {
			out.println("��¼�ɹ�");
		} //
		else {
			out.println("��¼ʧ��");
		}
		stat.close();
		con.close();
	}
%>

<%@ include file="information.jsp" %>  <!-- JSPָ�ֻ�Ǹ�����һ�� -->
