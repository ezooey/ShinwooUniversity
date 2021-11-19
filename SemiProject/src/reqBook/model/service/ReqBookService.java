package reqBook.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import reqBook.model.dao.ReqBookDAO;
import reqBook.model.vo.ReqBook;

import static common.JDBCTemplate.*;

public class ReqBookService {
	
	private ReqBookDAO nDAO = new ReqBookDAO();
	
	public ArrayList<ReqBook> selectList() {
		Connection conn = getConnection();
		
		ArrayList<ReqBook> list = nDAO.selectList(conn);
		
		close(conn);
		
		return list;

	}

	
	
	
	
	
	
	
	
	public int insertRequest(ReqBook r) {
		Connection conn = getConnection();
		
		int result = nDAO.insertRequest(conn, r);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
}

