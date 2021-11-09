package member.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;

import member.dao.MemberDAO;
import member.vo.Member;

public class MemberService {
	private MemberDAO mDAO = new MemberDAO();

	public int updateMember(Member m) {
		Connection conn = getConnection();
		
		int result = mDAO.updateMember(conn, m);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public int updatePwd(Member m) {
		Connection conn = getConnection();
		
		int result = mDAO.updatePwd(conn, m);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

}
