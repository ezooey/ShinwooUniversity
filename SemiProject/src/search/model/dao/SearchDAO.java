package search.model.dao;

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

import book.model.vo.Book;
import oracle.jdbc.proxy.annotation.Pre;
import review.model.vo.PageInfo;


public class SearchDAO {
	private Properties prop = null;
	
		public SearchDAO() {
		prop = new Properties();
			
		String fileName = SearchDAO.class.getResource("/sql/search/search-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Book> selectSearchBookList(Connection conn, PageInfo pi) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<Book> list = null;
		
		String query = prop.getProperty("selectSearchList");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<Book>();
			while(rset.next()) {
				Book b = new Book(
						rset.getString("book_no"),
						rset.getString("book_title"),
						rset.getInt("category_no"),
						rset.getString("author"),
						rset.getString("publisher"),
						rset.getDate("reg_date"),
						rset.getInt("rent_total"),
						rset.getString("own_yn"),
						rset.getString("book_info"),
						rset.getString("refer"),
						rset.getDate("release_date"),
						rset.getString("category_name"));
				list.add(b);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
				
		return list;
	}

	public int getListCount(Connection conn) {
		Statement stmt = null;
		ResultSet rset = null;
		int listCount = 0;
		
		String query = prop.getProperty("getListCount");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return listCount;
	}



}
