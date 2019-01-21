<%@page import="kr.co.board1.config.SQL"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.co.board1.config.DBConfig"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String parent 	= request.getParameter("parent");
	String content 	= request.getParameter("comment");
	String uid 		= request.getParameter("uid");
	String regip 	= request.getRemoteAddr();

	Connection conn = DBConfig.getConnection();

	// 3단계
	PreparedStatement psmt = conn.prepareStatement(SQL.INSERT_COMMENT);
	psmt.setString(1, parent);
	psmt.setString(2, content);
	psmt.setString(3, uid);
	psmt.setString(4, regip);
	
	// 4단계
	psmt.executeUpdate();
	
	// 5단계	
	// 6단계
	psmt.close();
	conn.close();
	
	// 그다음?

%>