<!-- 这部分是连接MySQL数据库的代码，并且进行了查询操作 -->

<%@ page language="java" import="java.sql.*"
	contentType="text/html; charset=gb2312"%>

<!-- 对request转码使之支持中文哦，要求，采用了method.post且在getPatameter之前使用 -->
<%request.setCharacterEncoding("gb2312");%>
<%
	String stunumber = request.getParameter("stunumber");
	String stuname = request.getParameter("stuname");
	
	//测试输出代码
	//System.out.print(stunumber);
	//System.out.print(stuname);
	
	if (stunumber != null && stuname != null) {
		Class.forName("com.mysql.jdbc.Driver");
		
		//修改具体的值，member数据库名，root用户名，密码自己设的MySQL的登陆密码
		Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/member?useSSL=true&characterEncoding=gb2312", "root", "123456");
		
		//PreparedStatement预处理语句对象
		PreparedStatement stat = null;
		ResultSet rs = null;
		
		//mess表名,number属性名，name属性名
		String sql = "SELECT * FROM mess WHERE number=?&&name=?";
		
		//使用预处理语句
		stat = con.prepareStatement(sql);
		
		//传值，第一个？通配符，按顺序对应1，第二个？通配符，按顺序对应2
		stat.setString(1, stunumber);
		stat.setString(2, stuname);
		
		//开始查询
		rs = stat.executeQuery();
		if (rs.next()) {
			out.println("登录成功");
		} //
		else {
			out.println("登录失败");
		}
		stat.close();
		con.close();
	}
%>

<%@ include file="information.jsp" %>  <!-- JSP指令，只是复制了一份 -->
