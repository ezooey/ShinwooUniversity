package reqBook.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import static common.JDBCTemplate.*;
import reqBook.model.dao.ReqBookDAO;
import reqBook.model.vo.ReqBook;

public class ReqBookService {
	
	private ReqBookDAO rkDAO = new ReqBookDAO();
	
	public ArrayList<ReqBook> selectList() {
		Connection conn = getConnection();
		
		ArrayList<ReqBook> list = rkDAO.selectList(conn);
		
		close(conn);
		
		return list;

}

	public ArrayList<ReqBook> selectMyList(String memberId) {
		Connection conn = getConnection();
		
		ArrayList<ReqBook> list = rkDAO.selectMyList(conn, memberId);
		close(conn);
		
		return list;
	}

	public ReqBook getReject(int rno) {
		Connection conn = getConnection();
		
		ReqBook rb = rkDAO.getReject(conn, rno);
		close(conn);
		
		return rb;
	}
}