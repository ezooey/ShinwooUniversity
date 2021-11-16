package admin.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import admin.model.dao.AdminDAO;
import admin.model.vo.PageInfo;
import admin.model.vo.UserList;

public class AdminService {
	
	private AdminDAO aDAO = new AdminDAO();

	public ArrayList<UserList> selectUserList() {
		Connection conn = getConnection();
		ArrayList<UserList> list = aDAO.selectUserList(conn);
		
		close(conn);
		
		return list;
	}

	public int updateUserInfo(UserList ul) {
		Connection conn = getConnection();
		
		int result = aDAO.updateUserInfo(conn, ul);
		
		if(result > 0) {
			commit(conn);
		}
		return result;
	}

	/*
	 * public int getListCount() { Connection conn = getConnection();
	 * 
	 * int listCount = new AdminDAO().getListCount(conn);
	 * 
	 * close(conn);
	 * 
	 * return listCount; }
	 */
	
	

}
