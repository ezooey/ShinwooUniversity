package reqBook.model.service;

import java.sql.Connection;
import java.util.ArrayList;
<<<<<<< HEAD

import reqBook.model.dao.ReqBookDAO;
import reqBook.model.vo.ReqBook;

import static common.JDBCTemplate.*;


public class ReqBookService {
	
		private ReqBookDAO rDAO = new ReqBookDAO();
		
		public ArrayList<ReqBook> selectList() {
			Connection conn = getConnection();
			
			ArrayList<ReqBook> list = rDAO.selectList(conn);
			
			close(conn);
			
			return list;
	
	}

		public ReqBook confirmList(int reqNo) {
			
			Connection conn = getConnection();
			
			ReqBook r = rDAO.confirmList(conn, reqNo);
			
			close(conn);
			
			return r;
		
		}


		public ReqBook sendReqinfo(int reqNo) {
			
			Connection conn = getConnection();
			
			ReqBook r = rDAO.sendReqinfo(conn, reqNo);
			
			close(conn);
			
			return r;
		}

		public ReqBook reqBookDetail(int reqNo) {
			
			Connection conn = getConnection();
			
			ReqBook r = rDAO.reqBookDetail(conn, reqNo);
			
			close(conn);
			
			return r;
	
		}

		public ReqBook defineList(int reqNo, String reason) {
			Connection conn = getConnection();
			
			ReqBook r = rDAO.defineList(conn, reqNo);
			
			close(conn);
			
			return r;
		}

		public int insertReason(int reqNo, String reason) {
			
			Connection conn = getConnection();
			
			int result = rDAO.insertReason(conn, reqNo,reason);
			
			if(result > 0) {
				commit(conn);
			} else {
				rollback(conn);
			}
			
			close(conn);
			
			return result;
		}
}
=======
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
}

>>>>>>> ad7d00f2c6f4e3643c20c6a451564c43fb4d504f
