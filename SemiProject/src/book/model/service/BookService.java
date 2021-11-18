package book.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import book.model.dao.BookDAO;
import book.model.vo.Book;
import photo.model.vo.Photo;

public class BookService {
	
	private BookDAO bkDAO = new BookDAO();

	public int insertThumbnail(Book b, Photo p) {
		Connection conn = getConnection();
		
		int result1 = bkDAO.insertBook(conn, b);
		int result2 = bkDAO.insertPhoto(conn, p);
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1 + result2;
	}

}
