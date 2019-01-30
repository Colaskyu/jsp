<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2-2</title>
</head>
<body>
	<h3>2.JAVA 반복문</h3>
	
	<h4>for</h4>
	<%
		int sum = 0;
		for(int k=1 ; k<=10 ; k++){
			sum += k;			
		}		
	%>
	<i>1에서 10까지 합 : <%= sum %></i>
		
	<h4>구구단표</h4>
	<table border="1">
		<tr>
			<td>2단</td>
			<td>3단</td>
			<td>4단</td>
			<td>5단</td>
			<td>6단</td>
			<td>7단</td>
			<td>8단</td>
			<td>9단</td>
		</tr>
		<% for(int a=1 ; a<=9 ; a++){%>
			<tr>
			<% for(int b=2 ; b<=9 ; b++){ %>
				<td><%= b %> x <%= a %> = <%= a*b %></td>
			<% } %>
			</tr>
		<% } %>
	
	</table>
	
	
	
	

</body>
</html>