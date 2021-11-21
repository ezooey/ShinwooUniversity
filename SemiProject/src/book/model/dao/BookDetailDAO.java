package book.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import book.model.vo.BookDetail;

public class BookDetailDAO {
	
	private Properties prop = null;
	
	public BookDetailDAO() {
		prop = new Properties();
			
		String fileName = BookDetailDAO.class.getResource("/sql/book/book-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public BookDetail selectBook(Connection conn, String bNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		BookDetail b = null;
		
		String query = prop.getProperty("selectBook");
		// selectBook=SELECT * FROM BLIST WHERE BOOK_NO = ?
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, bNo);
			
			rset = pstmt.executeQuery();
			if(rset.next()) {
				b = new BookDetail();
				b.setBookTitle(rset.getString("BOOK_TITLE"));
				b.setAuthor(rset.getString("AUTHOR"));
				b.setPublisher(rset.getString("PUBLISHER"));
				b.setRegDate(rset.getDate("REG_DATE"));
				b.setRentTotal(rset.getInt("RENT_TOTAL"));
				b.setOwnYN(rset.getString("OWN_YN"));
				b.setBookInfo(rset.getString("BOOK_INFO"));
				b.setRefer(rset.getString("REFER"));
				b.setReleaseDate(rset.getDate("RELEASE_DATE"));
				b.setCategoryName(rset.getString("CATEGORY_NAME"));
				b.setFilePath(rset.getString("FILE_PATH"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return b;
	}

	public int currBorrow(Connection conn, String bNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		
		String query = prop.getProperty("currBorrow");
		// currBorrow=SELECT COUNT(*) FROM BOOKRENTAL WHERE BOOK_NO = ? AND RENTAL_YN = 'N'
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, bNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}

	public int returnCheck(Connection conn, String rId, String bNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		
		String query = prop.getProperty("returnCheck");
		// returnCheck=SELECT COUNT(*) FROM BOOKRENTAL WHERE RENTAL_ID = ? AND BOOK_NO = ? AND RETURN_YN = 'N'
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, rId);
			pstmt.setString(2, bNo);
			
			rset = pstmt.executeQuery();
			if(rset.next()) {
				result = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return result;
	}

	public int rentalBook(Connection conn, String rId, String bNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("rentalBook");
		// rentalBook=INSERT INTO BOOKRENTAL VALUES(SEQ_RENT.NEXTVAL, ?, ?, SYSDATE, SYSDATE + 14, 'N')
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, bNo);
			pstmt.setString(2, rId);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
