package search.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import book.model.vo.Book;
import review.model.vo.PageInfo;
import search.model.dao.SearchDAO;
import search.model.vo.SearchBook;

public class SearchService {

	private SearchDAO sDAO = new SearchDAO(); 
	
	public ArrayList<Book> selectSearchBookList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Book> list = sDAO.selectSearchBookList(conn, pi);
		
		close(conn);
		
		return list;
	}

	public int getListCount() {
		Connection conn = getConnection();
		int listCount = new SearchDAO().getListCount(conn);
		
		close(conn);
		
		return listCount;
	}

	

}
