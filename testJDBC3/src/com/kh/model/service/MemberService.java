package com.kh.model.service;

import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.rollback;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.close;

import java.sql.Connection;

//import com.kh.common.JDBCTemplate;
import com.kh.model.dao.MemberDAO;

public class MemberService {
	private MemberDAO mDAO = new MemberDAO();
	
	public int insertMember() {
		Connection conn = getConnection();
		
		int result = mDAO.insertMember(conn);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

}
