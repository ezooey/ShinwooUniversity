package book.model.service;

import java.sql.Connection;

import book.model.dao.bookDAO;
import book.model.vo.Book;

import static common.JDBCTemplate.*;

public class BookService {
	private bookDAO bDAO = new bookDAO();

	public Book selectBook(int bId) {
		Connection conn = getConnection();
		int result = 0;
		
		Book b = null;
		
		
		return null;
	}

}
