package reqBook.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import book.model.vo.Book;

import static common.JDBCTemplate.*;
import reqBook.model.dao.ReqBookDAO;
import reqBook.model.vo.ReqBook;



import reqBook.model.dao.ReqBookDAO;
import reqBook.model.vo.ReqBook;

import static common.JDBCTemplate.*;
public class ReqBookService {
	
	private ReqBookDAO rkDAO = new ReqBookDAO();
	private ReqBookDAO nDAO = new ReqBookDAO();
	
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

	public int checkBookExist(Book b) {
		Connection conn = getConnection();
		
		int result = nDAO.checkBookExist(conn, b);
		
		close(conn);
		
		return result;
	}
}

