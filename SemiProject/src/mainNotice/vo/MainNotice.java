package mainNotice.vo;

import java.sql.Date;

public class MainNotice {
			
		private int noticeNo;
		private String noticeTiltle;
		private String noticedWriter;
		private int boardCount;
		private Date noticeDate;
		private String noticeContent;	
		private int status;
		private String state;
	
		
		MainNotice() {}

		public MainNotice(int noticeNo, String noticeTiltle, String noticedWriter, int boardCount, Date noticeDate,
				String noticeContent, int status, String state) {
			super();
			this.noticeNo = noticeNo;
			this.noticeTiltle = noticeTiltle;
			this.noticedWriter = noticedWriter;
			this.boardCount = boardCount;
			this.noticeDate = noticeDate;
			this.noticeContent = noticeContent;
			this.status = status;
			this.state = state;
		}

		public int getNoticeNo() {
			return noticeNo;
		}

		public void setNoticeNo(int noticeNo) {
			this.noticeNo = noticeNo;
		}

		public String getNoticeTiltle() {
			return noticeTiltle;
		}

		public void setNoticeTiltle(String noticeTiltle) {
			this.noticeTiltle = noticeTiltle;
		}

		public String getNoticedWriter() {
			return noticedWriter;
		}

		public void setNoticedWriter(String noticedWriter) {
			this.noticedWriter = noticedWriter;
		}

		public int getBoardCount() {
			return boardCount;
		}

		public void setBoardCount(int boardCount) {
			this.boardCount = boardCount;
		}

		public Date getNoticeDate() {
			return noticeDate;
		}

		public void setNoticeDate(Date noticeDate) {
			this.noticeDate = noticeDate;
		}

		public String getNoticeContent() {
			return noticeContent;
		}

		public void setNoticeContent(String noticeContent) {
			this.noticeContent = noticeContent;
		}

		public int getStatus() {
			return status;
		}

		public void setStatus(int status) {
			this.status = status;
		}

		public String getState() {
			return state;
		}

		public void setState(String state) {
			this.state = state;
		}

		@Override
		public String toString() {
			return "MainNotice [noticeNo=" + noticeNo + ", noticeTiltle=" + noticeTiltle + ", noticedWriter="
					+ noticedWriter + ", boardCount=" + boardCount + ", noticeDate=" + noticeDate + ", noticeContent="
					+ noticeContent + ", status=" + status + ", state=" + state + "]";
		}
		
}
	
		

		
