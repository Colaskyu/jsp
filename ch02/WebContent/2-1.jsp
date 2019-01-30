<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2-1</title>
</head>
<body>
	<h3>1.JAVA 조건문</h3>
	<%
		// 변수선언
		int num1 = 1;
		int num2 = 2;
		int num3 = 3;
		int num4 = 4;
	%>
	
	<h4>if</h4>
	<%
		if(num1 < num2){
			out.println("<i>num1이 num2보다 작다.</i>");
		}
	%>		
	
	<h4>if~else</h4>
	<% if(num1 > num2){ %>
		<i>num1이 num2보다 크다.</i>
	<% }else{ %>
		<i>num1이 num2보다 작다.</i>
	<% } %>
	
	
	<h4>if~else if</h4>
	<% if(num1 > num2){ %>	
		<i>num1이 num2보다 크다.</i>		
	<% }else if(num2 > num3){ %>	
		<i>num2이 num3보다 크다.</i>		
	<% }else if(num3 > num4){ %>	
		<i>num3이 num4보다 크다.</i>		
	<% }else{ %>	
		<i>num4가 가장 크다.</i>		
	<% } %>
</body>
</html>









