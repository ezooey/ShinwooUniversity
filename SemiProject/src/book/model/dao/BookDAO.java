package book.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import book.model.vo.Book;
import photo.model.vo.Photo;

public class BookDAO {
	private Properties prop = null;
	
	public BookDAO() {
		prop = new Properties();
		
		String fileName = BookDAO.class.getResource("/sql/book/book-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	
	public int insertBook(Connection conn, Book b) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertBook");
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, b.getBookNo());
			pstmt.setString(2, b.getBookTitle());
			pstmt.setInt(3, b.getCategory());
			pstmt.setString(4, b.getAuthor());
			pstmt.setString(5, b.getPublisher());
			pstmt.setString(6, b.getBookInfo());
			pstmt.setString(7, b.getRefer());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}


	public int insertPhoto(Connection conn, Photo p) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertPhoto");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, p.getBookNo());
			pstmt.setString(2, p.getOriginName());
			pstmt.setString(3, p.getChangeName());
			pstmt.setString(4, p.getFilePath());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}
}
