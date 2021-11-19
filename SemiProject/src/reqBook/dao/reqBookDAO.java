package reqBook.dao;

import static common.JDBCTemplate.*;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import reqBook.vo.ReqBook;

public class reqBookDAO {
	
	private Properties prop = null;
	
	public reqBookDAO() {
		prop = new Properties();
		
		String fileName = reqBookDAO.class.getResource("/sql/notice/notice-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<ReqBook> selectList(Connection conn) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<ReqBook> list = null;
		
		String query = prop.getProperty("selectList");
	
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<ReqBook>();
			
			while(rset.next()) {
				ReqBook r = new ReqBook(rset.getInt("REQ_NO"),
										rset.getString("REQ_BOOK"),
										rset.getDate("REQ_DATE"),
										rset.getString("REQ_PUB"),
										rset.getString("REQ_ATUTHOR"),
										rset.getString("REQ_COMMENT"),
										rset.getString("REQ_REASON"),
										rset.getInt("PERMIT_STATUS"),
										rset.getString("REQ_ID"));
				
				list.add(r);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return list;
	}
}

	
