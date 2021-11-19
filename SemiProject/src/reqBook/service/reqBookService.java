package reqBook.service;

import java.sql.Connection;
import java.util.ArrayList;

import reqBook.dao.reqBookDAO;
import reqBook.vo.ReqBook;

import static common.JDBCTemplate.*;



public class reqBookService {
	
		private reqBookDAO nDAO = new reqBookDAO();
		
		public ArrayList<ReqBook> selectList() {
			Connection conn = getConnection();
			
			ArrayList<ReqBook> list = nDAO.selectList(conn);
			
			close(conn);
			
			return list;
	
	}

}
