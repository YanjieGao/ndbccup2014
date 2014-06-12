<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


  <%
   response.setHeader("refresh", "0.5; URL = login.jsp");  // 定时跳转
   session.invalidate();
   
   //session=null; // 注销 session 
  %>

  
 
</body>
</html>