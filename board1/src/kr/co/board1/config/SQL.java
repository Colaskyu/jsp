package kr.co.board1.config;

public class SQL {
	
	public static final String SELECT_TERMS     = "SELECT * FROM `JSP_TERMS`";
	public static final String INSERT_REGISTER  = "INSERT INTO `JSP_MEMBER` SET uid=?, pass=PASSWORD(?), name=?, nick=?, email=?, hp=?, zip=?, addr1=?, addr2=?, regip=?, rdate=NOW()";    
	public static final String SELECT_LOGIN     = "SELECT * FROM `JSP_MEMBER` WHERE uid=? AND pass=PASSWORD(?)";
	
	public static final String INSERT_BOARD = "INSERT INTO `JSP_BOARD` SET "
											+ "cate='notice',"
											+ "title=?,"
											+ "content=?,"
											+ "uid=?,"
											+ "regip=?,"
											+ "rdate=NOW()";
	
	public static final String SELECT_LIST = "SELECT b.*, m.nick FROM `JSP_BOARD` AS b JOIN `JSP_MEMBER` AS m ON b.uid = m.uid ORDER BY b.seq DESC";
	public static final String SELECT_VIEW = "SELECT * FROM `JSP_BOARD` WHERE seq=?";
	public static final String UPDATE_HIT  = "UPDATE `JSP_BOARD` SET hit=hit+1 WHERE seq=?";
	public static final String DELETE_BOARD  = "DELETE FROM `JSP_BOARD` WHERE seq=?";
	public static final String UPDATE_BOARD  = "UPDATE `JSP_BOARD` SET "
											 + "title=?,"
											 + "content=?"
											 + " WHERE seq=?";
	
	
}







