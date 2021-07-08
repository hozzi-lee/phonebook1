<%--
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
--%>

<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PhoneVo"%>


<%
// phoneDB 메서드 클래스 인스턴스
PhoneDao phoneDao = new PhoneDao();

// 파라미터 꺼내기 / 이름설정, 대입
int personID = Integer.parseInt(request.getParameter("id"));
System.out.println("[파라미터 전송 확인: id= " + personID + "]");

// 삭제 메서드
phoneDao.phoneDelete(new PhoneVo(personID));

// 리다이렉트_리스트
response.sendRedirect("./list.jsp");

%>

<%--
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
--%>