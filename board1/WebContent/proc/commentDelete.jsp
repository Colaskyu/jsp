<%@page import="kr.co.board1.service.BoardService"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	BoardService service = BoardService.getInstance();
	String parent = service.delete(request);
	
	//리다이렉트
	response.sendRedirect("../view.jsp?seq="+parent);
%>








