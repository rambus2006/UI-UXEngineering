<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>안녕</title>
  <meta charset="UTF-8">
</head>
<body>
  <%
    //폼데이터에서 이름을 가져올 수 있다. http://localhost:8081/01_JSP0819/helloName.jsp
    String username = request.getParameter("username");
    if(username != null && ! username.trim().isEmpty()){
  %>
  <h1>안녕하세요, <%=username%> 님! </h1>
  <%
  }
  else{
  %>
  <h1>이름을 입력하지 않았습니다.</h1>
  <%
  }
  %>
</body>
</html>
