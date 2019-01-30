<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name 	  = request.getParameter("name");
	String gender 	  = request.getParameter("gender");
	String[] hobbies  = request.getParameterValues("hobby");
	String addr 	  = request.getParameter("addr");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3-3</title>
</head>
<body>
	<h3>3.회원가입 처리</h3>
	<table border="1">
		<tr>
			<td>이름</td>
			<td><%= name %></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><%= gender %></td>
		</tr>
		<tr>
			<td>취미</td>
			<td>
			<%
				for(String hobby : hobbies){
					out.print(hobby+", ");
				}			
			%>
			</td>
		</tr>
		<tr>
			<td>지역</td>
			<td><%= addr %></td>
		</tr>		
	</table>
	<a href="./3-1.jsp">회원가입</a>

</body>
</html>