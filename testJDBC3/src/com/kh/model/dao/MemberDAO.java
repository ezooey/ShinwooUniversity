package com.kh.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Properties;

public class MemberDAO {
	
	private Properties prop = null;
	
	public MemberDAO() {
		prop = new Properties();
		try {
			prop.load(new FileReader("query.properties"));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int insertMember(Connection conn) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		try {
			String query = prop.getProperty("insertMember"); // 프로퍼티 파일로 쿼리 삽입
			pstmt = conn.prepareStatement(query);
			
			String[] department = {"국어국문학과", "영어영문학과", "철학과", "문헌정보학과", "심리학과", "경제학과", "경영학과", "물리학과", "화학과", "건축공학과", "기계공학과", "신소재공학과", "산업공학과", "도시공학과", "사회학과", "법학과", "음악학과", "체육학과", "치의학과"};
			
			int num = 100;
			
			for(int i = 0; i < department.length; i++) {
				for(int j = 0; j < 10; j++) {
					pstmt.setString(1, entYear() + num);
					pstmt.setString(2, year() + month() + day());
					pstmt.setString(3, randomHangulName());
					pstmt.setString(4, department[i]); 
					result = pstmt.executeUpdate();
					
					num++;
				}
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public String year() {
		String year = Integer.toString((int)(Math.random() * (2002 - 1996 + 1) + 1996));
		return year;
	}
	
	public String entYear() {
		String year = Integer.toString((int)(Math.random() * (2021 - 2014 + 1) + 2014));
		return year;
	}
	
	public String month() {
		int m = (int)(Math.random() * (12 - 1 + 1) + 1);
		String month = "";
		if(m < 10) {
			month = "0";
		}
		
		month += Integer.toString(m);
		
		return month;
	}
	
	public String day() {
		int d = (int)(Math.random() * (31 - 1 + 1) + 1);
		
		
		String day = "";
		
		
		if(d < 10) {
			day = "0";
		}
		
		day += Integer.toString(d);
		
		return day;
	}
	
	public String randomHangulName() {
	    List<String> 성 = Arrays.asList("김", "이", "박", "최", "정", "강", "조", "윤", "장", "임", "한", "오", "서", "신", "권", "황", "안",
	        "송", "류", "전", "홍", "고", "문", "양", "손", "배", "조", "백", "허", "유", "남", "심", "노", "정", "하", "곽", "성", "차", "주",
	        "우", "구", "신", "임", "나", "전", "민", "유", "진", "지", "엄", "채", "원", "천", "방", "공", "강", "현", "변", "노", "도", "소", 
	        "신", "석");
	    List<String> 이름 = Arrays.asList("윤", "강", "건", "경", "고", "관", "광", "구", "규", "근", "기", "길", "율", "남", "악", "람", "심",
	        "단", "달", "담", "대", "덕", "도", "동", "두", "라", "래", "로", "루", "리", "마", "만", "명", "무", "문", "미", "민", "바", "박",
	        "백", "범", "별", "병", "보", "영", "사", "산", "상", "새", "서", "석", "선", "설", "섭", "성", "세", "소", "솔", "수", "숙", "순",
	        "송", "슬", "승", "시", "신", "아", "안", "애", "엄", "여", "연", "영", "예", "오", "옥", "완", "용", "우", "원", "월", "위", "예",
	        "유", "윤", "율", "은", "이", "익", "인", "일", "잎", "자", "잔", "장", "재", "전", "정", "제", "조", "종", "주", "준", "중", "지", 
	        "진", "찬", "창", "채", "태", "택", "한", "해", "혁", "현", "형", "롱", "평", "늘", "랑", "얀", "향", "울", "련", "엽", "학", "란",
	        "혜", "호", "홍", "화", "환", "회", "효", "훈", "휘", "희", "운", "모", "배", "부", "림", "봉", "혼", "황", "량", "린", "비", "헌",
	        "솜", "공", "면", "탁", "온", "디", "항", "후", "려", "균", "묵", "송", "욱", "휴", "언", "령", "열", "웅", "분", "변", "양", "번", 
	        "식");
	    Collections.shuffle(성);
	    Collections.shuffle(이름);
	    return 성.get(0) + 이름.get(0) + 이름.get(1);
	  }

}
