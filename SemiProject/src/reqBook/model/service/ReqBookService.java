package reqBook.model.service;

import java.sql.Connection;
import java.util.ArrayList;

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
