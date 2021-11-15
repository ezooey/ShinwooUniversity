package write.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Writer;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import static common.JDBCTemplate.*;

import write.vo.Write;
	
public class WriteDAO {
public Properties prop = null;
	
	public WriteDAO() {
		
		prop = new Properties();
		
		String fileName =  WriteDAO.class.getResource("/sql/board/write-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
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
		}finally {
			close(rset);
			close(stmt);			
		}

		return listCount;
	}

	public ArrayList<Write> selectList(Connection conn) {
	
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<Write> list = null;
		
		String query = prop.getProperty("selectList");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			
			while(rset.next()) {
				Write w = new Write(rset.getInt("review_no"),
									rset.getString("review_title"),
									rset.getDate("review_date"),
									rset.getString("review_writer"),
									rset.getInt("views"),
									rset.getString("staus"));
				
				list.add(w);
			}

		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}

		return list;
	}

}
	
	
