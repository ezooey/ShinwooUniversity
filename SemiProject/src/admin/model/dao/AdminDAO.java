package admin.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import admin.model.vo.PageInfo;
import admin.model.vo.UserList;

public class AdminDAO {
	private Properties prop = null;
	
	public AdminDAO() {
		prop = new Properties();
		
		String fileName = AdminDAO.class.getResource("/sql/admin/admin-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}	

	public ArrayList<UserList> selectUserList(Connection conn) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<UserList> list = null;
		
		String query = prop.getProperty("selectUserList");
		
//		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
//		int endRow = startRow + pi.getBoardLimit() -1;
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<UserList>();
			while(rset.next()) {
				UserList ul = new UserList(
											rset.getString("member_id"),
											rset.getString("member_name"),
											rset.getString("department"),
											rset.getString("phone"),
											rset.getString("address"),
											rset.getString("email"),
											rset.getString("status"));
				list.add(ul);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return list;
	}

	public int updateUserInfo(Connection conn, UserList ul) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("updateUserList");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, ul.getMemberName());
			pstmt.setString(2, ul.getDepartment());
			pstmt.setString(3, ul.getEmail());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		return result;
	}

//	public int getListCount(Connection conn) {
//		Statement stmt = null;
//		ResultSet rset = null;
//		int listCount = 0;
//		
//		String query = prop.getProperty("getListCount");
//		
//		try {
//			stmt = conn.createStatement();
//			rset = stmt.executeQuery(query);
//			
//			if(rset.next()) {
//				listCount = rset.getInt(1);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close(rset);
//			close(stmt);
//		}
//		return listCount;
//	}

	
}

