package question.model.service;

import java.sql.Connection;
import static common.JDBCTemplate.*;
import inquiry.model.dao.QuestionDAO;
import inquiry.model.vo.Question;

public class QuestionService {
	private QuestionDAO qDAO = new QuestionDAO();

	public Question selectQuestion(int no) {
		Connection conn = getConnection();
		return null;
	}
	
}
