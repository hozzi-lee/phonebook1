<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.javaex.vo.PhoneVo"%>
<%@ page import="com.javaex.dao.PhoneDao"%>

<%
// 파라미터에서 꺼내기 / 파라미터 이름 설정하기?
// form의 input name="" 에 대한 값 == 파라미터값
String name = request.getParameter("name");
String hp = request.getParameter("hp");
String company = request.getParameter("company");

// 파라미터 값이 정상적으로 전송 됐는지 확인
System.out.println("파라미터 전송 확인: " + name + ", " + hp + ", " + company);

// PhoneDao 인스턴스 생성
PhoneDao phoneDao = new PhoneDao();

// Vo로 파라미터 값 대입
PhoneVo phoneVo = new PhoneVo(name, hp, company);
// Dao에 저장
phoneDao.phoneInsert(phoneVo); // phoneDao.phoneInsert(new PhoneVo(name, hp, company)); 대체 가능

// 리스트 가져오기 --> list.jsp 자체를 불러오는 것으로 수정예정
List<PhoneVo> phoneList = phoneDao.phoneList(); // list와 마찬가지로 생략 가능

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- list.jsp 자체를 불러오는 것으로 수정예정 -->
	<h1>전화번호 리스트 - INSERT</h1>
	<p>입력한 정보 내역입니다.</p>

	<%
	for (PhoneVo p : phoneDao.phoneList()) { // 리스트 가져오기 생략 할 경우 메서드
	%>

	<table border=1>
		<tr>
			<td>이름</td>
			<td><%=p.getName() %></td>
		</tr>
		<tr>
			<td>핸드폰</td>
			<td><%=p.getHp() %></td>
		</tr>
		<tr>
			<td>회사</td>
			<td><%=p.getCompany() %></td>
		</tr>
	</table>

	<br>

	<%
	}
	%>
	
	<a href="./writeForm.jsp">추가번호 등록</a>

</body>
</html>