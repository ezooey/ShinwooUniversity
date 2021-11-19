package question.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import question.model.dao.QuestionDAO;
import question.model.vo.Question;
import review.model.vo.PageInfo;

public class QuestionService {
	private QuestionDAO qDAO = new QuestionDAO();

	public int getListCount() {
		Connection conn = getConnection();
		
		int listCount = qDAO.getListCount(conn);
		
		close(conn);
		
		return listCount;
	}

	public ArrayList<Question> selectList(PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<Question> list = qDAO.selectList(conn, pi);
		
		close(conn);
		
		return list;
	}
	
}
