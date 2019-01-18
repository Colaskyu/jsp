package kr.co.board1.service;

public class BoardService {

	private static BoardService service = new BoardService();
	
	public static BoardService getInstance() {
		return service;
	}
	
	private BoardService() {}
	
	public void insertBoard() throws Exception {}
	public void list() throws Exception {}
	public void view() throws Exception {}
	public void update() throws Exception {}
	public void delete() throws Exception {}
	public void insertComment() throws Exception {}
	public void listComment() throws Exception {}
}






