package mainNotice.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import static common.JDBCTemplate.*;

import mainNotice.vo.MainNotice;

public class MainNoticeDAO {

		Properties prop = null;
		
	public MainNoticeDAO() {
		prop = new Properties();
			
		String fileName = MainNoticeDAO.class.getResource("/sql/main/main-query.properties").getPath();
			
		try {
			 prop.load(new FileReader(fileName));			
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		//list 뽑기 
		public ArrayList<MainNotice> selectList(Connection conn) {
				
			Statement stmt = null;
			ResultSet rset = null;
			ArrayList<MainNotice> list = null;
			
			String query = prop.getProperty("selectList");
						
			try {
				stmt = conn.createStatement();
				rset = stmt.executeQuery(query);
				
				list = new ArrayList<MainNotice>();
				
				while(rset.next()) {
					MainNotice mn = new MainNotice(rset.get
														noticeNo, noticeTiltle, noticedWriter, boardCount, noticeDate, noticeContent, status, state)
	
					list.add(mn);
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
	
	
}
	
