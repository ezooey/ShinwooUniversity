package member.dao;

import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;

public class MemberDAO {
	private Properties prop = null;
	
	public MemberDAO() {
		prop = new Properties();
		
		String fileName = MemberDAO.class.getResource("/sql/member/member-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
