<%@page import="kr.co.board1.vo.MemberVO"%>
<%@page import="kr.co.board1.config.SQL"%>
<%@page import="kr.co.board1.config.DBConfig"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 파라미터 수신
	request.setCharacterEncoding("UTF-8");
	String uid  = request.getParameter("uid");
	String pass = request.getParameter("pass");
	
	String redirectUrl = null;

	Connection conn = DBConfig.getConnection();
	
	// 3단계
	PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_LOGIN);
	psmt.setString(1, uid);
	psmt.setString(2, pass);
	
	// 4단계
	ResultSet rs = psmt.executeQuery();
	
	// 5단계
	if(rs.next()){
		// 아이디와 비밀번호가 일치하는 회원이 테이블에 있을 경우
		MemberVO vo = new MemberVO();
		vo.setSeq(rs.getInt(1));
		vo.setUid(rs.getString(2));
		vo.setPass(rs.getString(3));
		vo.setName(rs.getString(4));
		vo.setNick(rs.getString(5));
		vo.setEmail(rs.getString(6));
		vo.setHp(rs.getString(7));
		vo.setGrade(rs.getInt(8));
		vo.setZip(rs.getString(9));
		vo.setAddr1(rs.getString(10));
		vo.setAddr2(rs.getString(11));
		vo.setRegip(rs.getString(12));
		vo.setRdate(rs.getString(13));
		
		session.setAttribute("member", vo);
		
		redirectUrl = "./list.jsp";
	}else{
		// 아이디와 비밀번호가 일치하는 회원이 테이블에 없을 경우
		redirectUrl = "../login.jsp?result=fail";
	}
	
	// 6단계
	rs.close();
	psmt.close();
	conn.close();
	
	// 리다이렉트
	response.sendRedirect(redirectUrl);
%>








