package kr.co.board1.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import kr.co.board1.config.DBConfig;
import kr.co.board1.config.SQL;
import kr.co.board1.vo.TermsVO;

public class MemberService {
	
	// 싱글톤 객체 : 교재 440p
	private static MemberService service = new MemberService();
	
	public static MemberService getInstance() {
		return service;
	}
	
	// 객체를 생성 할 수 없게 private 생성자 선언 
	private MemberService() {}
	
	public void login() throws Exception {}
	public void logout() throws Exception {}
	
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
	public void register() throws Exception {}
	
}
