<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>12-1</title>
</head>
<body>
	<h3>1.JSTL 기초</h3>
	<h4>스크립트릿으로 실행</h4>
	<%
		String str = "Hello";
		out.println("<p>"+str+"</p>");
	
		int num1 = 1;
		int num2 = 2;
		
		if(num1 < num2){
			out.println("<p>num1이 num2보다 작다.</p>");
		}
		
		if(num1 > num2){
			out.println("<p>num1이 num2보다 크다.</p>");
		}else{
			out.println("<p>num1이 num2보다 작다.</p>");
		}
		
		for(int i=1 ; i<=5 ; i++){
			out.println("<p>Hello JSTL!</p>");
		}
		
		int sum = 0;
		for(int k=1 ; k<=10 ; k++){
			sum += k;
		}
		out.println("<p>1부터 10까지 합 : "+sum+"</p>");
	
	%>
	<h4>태그요소로 실행</h4>
	
	<c:set var="str" value="Hello" />
	<p>${str}</p>
	


</body>
</html>











