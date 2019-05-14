<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
  <html>
  <body>
    <%
    	//全都表示客户端缓存中不保存页面的拷贝
    	response.setHeader("Pragma","No-cache");
    	response.setHeader("Cache-Control","no-cache");
    	response.setDateHeader("Expires",0);
    	
    	//每隔5秒钟定期刷新一次
    	response.setHeader("Refresh","5");
    %>    
  </body>
  </html>
