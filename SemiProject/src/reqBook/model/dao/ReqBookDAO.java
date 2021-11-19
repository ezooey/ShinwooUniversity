package reqBook.model.dao;

import static common.JDBCTemplate.*;

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

import reqBook.model.vo.ReqBook;

public class ReqBookDAO {
	
	private Properties prop = null;
	
	public ReqBookDAO() {
		prop = new Properties();
		
		String fileName = ReqBookDAO.class.getResource("/sql/reqBook/reqBook-query.properties").getPath();
		
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
										rset.getString("REQ_AUTHOR"),
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

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public int insertRequest(Connection conn, ReqBook r) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertRequest");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, r.getReqBookTitle());
			pstmt.setString(2, r.getReqBookPub());
			pstmt.setString(3, r.getReqBookAuthor());
			pstmt.setString(4, r.getReqBookComment());
			pstmt.setString(5, r.getReqWriterId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
}
