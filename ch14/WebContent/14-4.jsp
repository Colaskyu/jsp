<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 파라미터 수신
	request.setCharacterEncoding("UTF-8");
	String seq = request.getParameter("seq");
	
	// 데이터베이스 정보
	final String HOST = "jdbc:mysql://192.168.0.156:3306/chhak";
	final String USER = "chhak";
	final String PASS = "1234";

	// 객체선언
	Connection conn = null;
	Statement  stmt = null;	
	
	try{
		// 1단계	 - JDBC 드라이버 로드
		Class.forName("com.mysql.jdbc.Driver");
		
		// 2단계 - DB접속
		conn = DriverManager.getConnection(HOST, USER, PASS);
		
		// 3단계 - 쿼리실행 객체 생성
		stmt = conn.createStatement();
		
		// 4단계 - 쿼리실행
		String sql = "DELETE FROM `USER` WHERE uid="+seq;
		stmt.executeUpdate(sql);
	
		// 5단계 - 결과셋처리(SELECT 경우)
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		// 6단계
		stmt.close();
		conn.close();
	}
	
	// 리다이렉트 - 직원목록 이동
	response.sendRedirect("./14-3.jsp");
%>






