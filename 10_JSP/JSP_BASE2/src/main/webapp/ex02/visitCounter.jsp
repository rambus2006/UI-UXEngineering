<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>방문 횟수 카운터 </title>
  <meta charset="UTF-8">
</head>
<body>
 <!--자바 객체 안에서 사용한다.-->
 <h3>JSP 내장 객체 중 session(세션) 객체를 사용하여 사용자가 사이트를 방문한 횟수를 추적하는 JSP를 작성</h3>
 <%
 //방문 횟수를 가져오기
    Integer visitCount = (Integer) session.getAttribute("visitCount");
    if(visitCount == null){
        // 방문한 적이 없으면 null 이므로 첫 방문이다.
        visitCount=1;
    }else{
        //이미 있다면 1씩 증가
        visitCount++;
    }
    //새로운 방문횟수를 세션에 저장함
    session.setAttribute("visitCount",visitCount);
 %>
 <h1>이 사이트를 <%=visitCount%>번 방문하였습니다.</h1>
</body>
</html>
