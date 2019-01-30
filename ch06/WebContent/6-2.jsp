<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>6-2</title>
</head>
<body>
	<h3>500에러발생 페이지</h3>
	<%
		String uid = request.getParameter("uid");
	
		// Null Point 에러발생
		out.println("uid : "+uid.toString()); 	
	%>
</body>
</html>














