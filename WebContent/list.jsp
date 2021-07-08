<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- CLASS import -->
<%@ page import="java.util.List"%>
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PhoneVo"%>

<!-- phonedb 에서 불러오기 -->
<%
// PhoneDao 인스턴스 생성 (phonedb와 연결되어있는)
PhoneDao phoneDao = new PhoneDao();

// PhoneDao의 phoneList()(리턴값 List<PhoneVo> phoneList = new ArrayList<PhoneVo>())를
// List<PhoneVo> phoneList에 대입
List<PhoneVo> phoneList = phoneDao.phoneList(); // 생략 가능

// System.out.println(phoneList.toString()); 확인용
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.phoneDB</title>
</head>
<body>

	<h1>전화번호 리스트</h1>
	<p>입력한 정보 내역입니다.</p>

<%--
java코드는 <% %> 사이에 작성
값에 대한 변수 이름은 <%= %> 사이에 작성 
--%>
	<%
	for (int i = 0; i < phoneList.size(); i++) { // 코드
	%>

	<table border=1>
		<tr>
			<td>이름(<%=phoneList.get(i).getPersonID() %>)</td>
			<td><%=phoneList.get(i).getName()%></td> <!-- 변수이름 = %= -->
		</tr>
		<tr>
			<td>핸드폰</td>
			<td><%=phoneList.get(i).getHp()%></td>
		</tr>
		<tr>
			<td>회사</td>
			<td><%=phoneList.get(i).getCompany()%></td>
		</tr>
		<tr>
			<td><a href="./updateForm.jsp?id=<%=phoneList.get(i).getPersonID()%>">[수정]</a></td>
			<td><a href="./delete.jsp?id=<%=phoneList.get(i).getPersonID()%>">[삭제]</a></td>
		</tr>
	</table>

	<br>

	<%
	}
	%>

	<a href="./writeForm.jsp">추가번호 등록</a>

	<h3>향상된 for문 테스트</h3>
	<%
	for (PhoneVo p : phoneList) {
	%>

	<table border=1>
		<tr>
			<td>이름(<%=p.getPersonID()%>)</td>
			<td><%=p.getName()%></td>
		</tr>
		<tr>
			<td>핸드폰</td>
			<td><%=p.getHp()%></td>
		</tr>
		<tr>
			<td>회사</td>
			<td><%=p.getCompany()%></td>
		</tr>
	</table>

	<br>

	<%
	}
	%>

	<hr>

	<%-- 테스트 완료 문제없음 --%>
	<h2>List 인스턴스 없이 불러오기 TEST</h2>

	<h3>테스트</h3>
	<%
	for (int i = 0; i < phoneDao.phoneList().size(); i++) { // 리스트 가져오기 생략 할 경우 메서드
	%>

	<table border=1>
		<tr>
			<td>이름(<%=phoneDao.phoneList().get(i).getPersonID()%>)</td>
			<td><%=phoneDao.phoneList().get(i).getName()%></td>
		</tr>
		<tr>
			<td>핸드폰</td>
			<td><%=phoneDao.phoneList().get(i).getHp()%></td>
		</tr>
		<tr>
			<td>회사</td>
			<td><%=phoneDao.phoneList().get(i).getCompany()%></td>
		</tr>
	</table>

	<br>

	<%
	}
	%>

	<br>

	<h3>향상된 for문</h3>
	<%
	for (PhoneVo p : phoneDao.phoneList()) { // 리스트 가져오기 생략 할 경우 메서드
	%>

	<table border=1>
		<tr>
			<td>이름(<%=p.getPersonID()%>)</td>
			<td><%=p.getName()%></td>
		</tr>
		<tr>
			<td>핸드폰</td>
			<td><%=p.getHp()%></td>
		</tr>
		<tr>
			<td>회사</td>
			<td><%=p.getCompany()%></td>
		</tr>
	</table>

	<br>

	<%
	}
	%>
</body>
</html>