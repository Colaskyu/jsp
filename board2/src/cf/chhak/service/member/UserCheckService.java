package cf.chhak.service.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import com.google.gson.JsonObject;

import cf.chhak.config.DBConfig;
import cf.chhak.config.SQL;
import cf.chhak.controller.CommonAction;

public class UserCheckService implements CommonAction {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String uid = req.getParameter("uid");
		
		Connection conn = DBConfig.getConnection();
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_UID_COUNT);
		psmt.setString(1, uid);
		
		ResultSet rs = psmt.executeQuery();

		int count = 0;
		if(rs.next()){
			count = rs.getInt(1);
		}
		
		rs.close();
		psmt.close();
		conn.close();
		
		// JSON format으로 변환
		JsonObject json = new JsonObject();
		json.addProperty("result", count);
		
		return json.toString();
	}

}












