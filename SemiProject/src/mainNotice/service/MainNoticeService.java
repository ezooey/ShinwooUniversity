package mainNotice.service;

import java.sql.Connection;
import java.util.ArrayList;

import static common.JDBCTemplate.*;

import mainNotice.dao.MainNoticeDAO;
import mainNotice.vo.MainNotice;

public class MainNoticeService {

	private MainNoticeDAO mnDAO = new MainNoticeDAO();
	
	public ArrayList<MainNotice> selectList(){
		Connection conn = getConnection();
		
		ArrayList<MainNotice> list = mnDAO.selectList(conn);
		
		close(conn);
		
		return list;
	}
	
	
}
