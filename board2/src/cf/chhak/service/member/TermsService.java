package cf.chhak.service.member;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cf.chhak.config.DBConfig;
import cf.chhak.config.SQL;
import cf.chhak.controller.CommonAction;
import cf.chhak.vo.TermsVO;

public class TermsService implements CommonAction {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
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
		
		// request객체를 통한 데이터 공유
		req.setAttribute("vo", vo);
		
		
		return "/terms.jsp";
	}

}


















