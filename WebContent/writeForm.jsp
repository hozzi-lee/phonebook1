<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert.phoneDB</title>
</head>
<body>

	<h1>전화번호 등록</h1>
	<p>
		전화번호를 등록하려면<br>
		아래 항복을 기입하고 "등록" 버튼을 클릭하세요.
	</p>

<!-- 입력받은 값을 insert.jsp로 보낸다 = action / get 방식으로(주소창에 파라미터 표시), post(주소창에 파라미터 미표시) -->
	<form action="./insert.jsp" method="get">
		이름(name): <input type="text" name="name" value=""><br> <!-- insert.jsp의 name 파라미터로 전송 -->
		핸드폰(hp): <input type="text" name="hp" value=""><br> <!-- insert.jsp의 hp 파라미터로 전송 -->
		회사(company): <input type="text"  name="company" value=""><br> <!-- insert.jsp의 company 파라미터로 전송 -->
		
		<button type="submit">등록</button> <!-- action에 대한 submit -->
	</form>

	<br>

	<a href="./list.jsp">리스트 바로가기</a>





</body>
</html>