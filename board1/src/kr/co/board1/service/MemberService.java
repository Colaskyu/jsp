package kr.co.board1.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.board1.config.DBConfig;
import kr.co.board1.config.SQL;
import kr.co.board1.vo.MemberVO;
import kr.co.board1.vo.TermsVO;

public class MemberService { 
	
	// 싱글톤 객체 : 교재 440p
	private static MemberService service = new MemberService();
	
	public static MemberService getInstance() {
		return service;
	}
	
	// 객체를 생성 할 수 없게 private 생성자 선언 
	private MemberService() {}
	
	public String login(HttpServletRequest request, HttpSession session) throws Exception {
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
			
			redirectUrl = "../list.jsp";
		}else{
			// 아이디와 비밀번호가 일치하는 회원이 테이블에 없을 경우
			redirectUrl = "../login.jsp?result=fail";
		}
		
		// 6단계
		rs.close();
		psmt.close();
		conn.close();
		
		return redirectUrl;
	}
	
	public void logout(HttpSession session, HttpServletResponse response) throws Exception {
		session.invalidate();
		response.sendRedirect("../login.jsp");
		
	}
	
	public TermsVO terms() throws Exception {
		
		Connection conn = DBConfig.getConnection();		
		// 3단계 - 쿼리실행 객체 생성
		Statement stmt = conn.createStatement();
		
		// 4단계 - 쿼리실행
		ResultSet rs = stmt.executeQuery(SQL.SELECT_TERMS);
		
		// 5단계 - 결과셋 처리(SELECT 경우)
		TermsVO vo = null;
		
		if(rs.next()){
			vo = new TermsVO();
			vo.setTerms(rs.getString(1));
			vo.setPrivacy(rs.getString(2));
		}
		
		// 6단계 - DB자원 해제
		rs.close();
		stmt.close();
		conn.close();
		
		return vo;
	}
	public void register(HttpServletRequest request) throws Exception {
		
		// 파라미터 수신
		request.setCharacterEncoding("UTF-8");
		String uid   = request.getParameter("uid");
		String pass  = request.getParameter("pw1");
		String name  = request.getParameter("name");
		String nick  = request.getParameter("nick");
		String email = request.getParameter("email");
		String hp 	 = request.getParameter("hp");
		String zip 	 = request.getParameter("zip");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String regip = request.getRemoteAddr();
		
		Connection conn = DBConfig.getConnection();
		
		// 3단계
		PreparedStatement psmt = conn.prepareStatement(SQL.INSERT_REGISTER);
		psmt.setString(1, uid);
		psmt.setString(2, pass);
		psmt.setString(3, name);
		psmt.setString(4, nick);
		psmt.setString(5, email);
		psmt.setString(6, hp);
		psmt.setString(7, zip);
		psmt.setString(8, addr1);
		psmt.setString(9, addr2);
		psmt.setString(10, regip);
		
		// 4단계
		psmt.executeUpdate();
		
		// 5단계
		
		// 6단계
		psmt.close();
		conn.close();
	}
	
}
