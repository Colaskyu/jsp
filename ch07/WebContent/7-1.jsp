<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>7-1</title>
</head>
<body>
	<h3>1.인클루드 디렉티브</h3>
	<!-- 인클루드 지시자 -->
	<%@ include file="./inc/config.jsp" %>
	<p>
		데이터베이스 호 스 트 : <%= HOST %><br />
		데이터베이스 아 이 디 : <%= USER %><br />
		데이터베이스 비밀번호 : <%= PASS %><br />	
	</p>
</body>
</html>





