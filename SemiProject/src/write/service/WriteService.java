package write.service;

import java.sql.Connection;
import java.util.ArrayList;

import write.dao.WriteDAO;
import write.vo.Write;

import static common.JDBCTemplate.*;

public class WriteService {

	private WriteDAO wDAO = new WriteDAO();

	public int getList() {
		
		Connection conn = getConnection();
		
		int listCount = wDAO.getListCount(conn);
		
		close(conn);
		
		return listCount;
		}


	public ArrayList<Write> selectList(){
		
		Connection conn = getConnection();
		
		ArrayList<Write> list = wDAO.selectList(conn);
		
		close(conn);
		
		return list;
		
		
		
	}


}

