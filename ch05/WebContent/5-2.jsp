<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5-2</title>
</head>
<body>
	<h3>2.내장객체 범위값 확인</h3>
	<%
		String pName = (String)pageContext.getAttribute("name");
		String rName = (String)request.getAttribute("name");
		String sName = (String)session.getAttribute("name");
		String aName = application.getAttribute("name").toString();
			
	%>
	
	<h4>pageContext Name값 : <%= pName %></h4>
	<h4>request Name값 : <%= rName %></h4>
	<h4>session Name값 : <%= sName %></h4>
	<h4>application Name값 : <%= aName %></h4>
	
</body>
</html>







