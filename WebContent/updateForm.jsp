<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PhoneVo" %>


<%
PhoneDao phoneDao = new PhoneDao();

int personID = Integer.parseInt(request.getParameter("id"));
// System.out.println(personID); 확인용

PhoneVo phoneVo = phoneDao.getPerson(personID);
// System.out.println(phoneVo.toString()); 확인용
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>전화번호 수정</h1>
	<p>수정화면 입니다. 아래 항목을 수정하고 "수정" 버튼을 클릭하세요.</p>
	
	<form action="./update.jsp" method="get">
	이름: <input type="text" name="name" value="<%=phoneVo.getName() %>"> <br>
	핸드폰: <input type="text" name="hp" value="<%=phoneVo.getHp() %>"> <br>
	회사: <input type="text" name="company" value="<%=phoneVo.getCompany() %>"> <br>
	<input type="hidden" name="id" value="<%=phoneVo.getPersonID() %>"> <br>
	
	<button type="submit">수정</button>
	</form>

</body>
</html>