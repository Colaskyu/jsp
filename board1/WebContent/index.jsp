<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%

	if(true){
		//로그인을 안했으면		
		//response.sendRedirect("./login.jsp");
		pageContext.forward("./login.jsp");
	}else{
		//response.sendRedirect("./list.jsp");
		pageContext.forward("./list.jsp");
	}

%>