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
										rset.getString("MEMBER_NAME"),
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


	public ReqBook defineList(Connection conn, int reqNo) {
			
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ReqBook r = null;
		
		String query = prop.getProperty("defineList");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, reqNo);
			rset = pstmt.executeQuery();

			if(rset.next()) {
				r = new ReqBook(rset.getInt("REQ_NO"),
						rset.getString("REQ_BOOK"),
						rset.getDate("REQ_DATE"),
						rset.getString("REQ_PUB"),
						rset.getString("REQ_AUTHOR"),
						rset.getString("MEMBER_NAME"),
						rset.getString("REQ_COMMENT"),
						rset.getString("REQ_REASON"),
						rset.getInt("PERMIT_STATUS"),
						rset.getString("REQ_ID"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return r;
	}
	
	public ReqBook sendReqinfo(Connection conn, int reqNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ReqBook r = null;
		
		String query = prop.getProperty("sendReqinfo");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, reqNo);
			rset = pstmt.executeQuery();

			if(rset.next()) {
				r = new ReqBook(rset.getInt("REQ_NO"),
						rset.getString("REQ_BOOK"),
						rset.getDate("REQ_DATE"),
						rset.getString("REQ_PUB"),
						rset.getString("REQ_AUTHOR"),
						rset.getString("MEMBER_NAME"),
						rset.getString("REQ_COMMENT"),
						rset.getString("REQ_REASON"),
						rset.getInt("PERMIT_STATUS"),
						rset.getString("REQ_ID"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return r;
		}

	public ReqBook confirmList(Connection conn, int reqNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ReqBook r = null;
		
		String query = prop.getProperty("confirmList");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, reqNo);
			rset = pstmt.executeQuery();

			if(rset.next()) {
				r = new ReqBook(rset.getInt("REQ_NO"),
						rset.getString("REQ_BOOK"),
						rset.getDate("REQ_DATE"),
						rset.getString("REQ_PUB"),
						rset.getString("REQ_AUTHOR"),
						rset.getString("MEMBER_NAME"),
						rset.getString("REQ_COMMENT"),
						rset.getString("REQ_REASON"),
						rset.getInt("PERMIT_STATUS"),
						rset.getString("REQ_ID"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return r;
	}

	public ReqBook reqBookDetail(Connection conn, int reqNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ReqBook r = null;
		
		String query = prop.getProperty("reqBookDetail");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, reqNo);
			rset = pstmt.executeQuery();

			if(rset.next()) {
				r = new ReqBook(rset.getInt("REQ_NO"),
						rset.getString("REQ_BOOK"),
						rset.getDate("REQ_DATE"),
						rset.getString("REQ_PUB"),
						rset.getString("REQ_AUTHOR"),
						rset.getString("MEMBER_NAME"),
						rset.getString("REQ_COMMENT"),
						rset.getString("REQ_REASON"),
						rset.getInt("PERMIT_STATUS"),
						rset.getString("REQ_ID"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return r;
		}

	public int insertReason(Connection conn, int reqNo, String reason) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertReason");
		try {
			pstmt = conn.prepareStatement(query);		
			pstmt.setString(1, reason);
			pstmt.setInt(2, reqNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
}