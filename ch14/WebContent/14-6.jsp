<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String uid  = request.getParameter("uid");
	String name = request.getParameter("name");
	String hp   = request.getParameter("hp");
	String addr = request.getParameter("addr");
	String pos  = request.getParameter("pos");
	String dep  = request.getParameter("dep");
	
	int dp = Integer.parseInt(dep);

	// 데이터베이스 정보
	final String HOST = "jdbc:mysql://192.168.0.156:3306/chhak";
	final String USER = "chhak";
	final String PASS = "1234";
	
	// 객체선언
	Connection 		  conn = null;
	PreparedStatement psmt = null;
	
	try{
		// 1단계
		Class.forName("com.mysql.jdbc.Driver");
		
		// 2단계
		conn = DriverManager.getConnection(HOST, USER, PASS);
		
		// 3단계
		String sql  = "UPDATE `USER` SET name=?, hp=?, addr=?, pos=?, dep=? ";
			   sql += "WHERE uid=?";
			   
		psmt = conn.prepareStatement(sql);
		// 데이터 맵핑(사상)
		psmt.setString(1, name);
		psmt.setString(2, hp);
		psmt.setString(3, addr);
		psmt.setString(4, pos);
		psmt.setInt(5, dp);
		psmt.setString(6, uid);
		
		// 4단계
		psmt.executeUpdate();
		
		// 5단계
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		// 6단계
		psmt.close();
		conn.close();
	}
	
	
	// 리다이렉트 - 직원 목록으로 이동
	response.sendRedirect("./14-3.jsp");
%>






