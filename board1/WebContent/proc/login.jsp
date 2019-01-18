<%@page import="kr.co.board1.service.MemberService"%>
<%@page import="kr.co.board1.vo.MemberVO"%>
<%@page import="kr.co.board1.config.SQL"%>
<%@page import="kr.co.board1.config.DBConfig"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	MemberService service = MemberService.getInstance();
	String redirectUrl = service.login(request, session);
	
	//리다이렉트
	response.sendRedirect(redirectUrl);
%>








