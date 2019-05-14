<!-- 这里制作了一个登陆页面，并提交到了数据库查询页面 -->

<%@ page language="java" contentType="text/html; charset=gb2312" %>

<html>
	<body>
       
                      请登录<br>
                      
        <!-- method.post使URL传值地址栏不可见 -->
        <!-- action.路径 使提交之后调用该页面处理后面的事情 -->
        <form action="database.jsp" method="post">  
        
                     请输入您的学号：<input type ="text" name="stunumber"><br>  <!-- type.text普通文本框 -->
                     请输入您的姓名：<input type ="text" name="stuname"><br>
                     
        <input type ="submit" value="登录">   <!-- type.submit提交按钮 -->
        </form>

        <!-- 接下来就是验证密码，然后登陆，一个页面也可以滴，但我就要两个页面-->
        
        <%@ include file="information.jsp" %>
  </body>
</html>
