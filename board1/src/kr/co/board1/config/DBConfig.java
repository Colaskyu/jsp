package kr.co.board1.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConfig {

	//데이터베이스 정보
	private static final String HOST = "jdbc:mysql://192.168.0.126:3306/chhak?noAccessToProcedureBodies=true";
	private static final String USER = "chhak";
	private static final String PASS = "1234";
	
	public static Connection getConnection() throws Exception {
		// 1단계
		Class.forName("com.mysql.jdbc.Driver");
		// 2단계
		Connection conn = DriverManager.getConnection(HOST, USER, PASS);
		return conn;
	}
	
	
}
