package write.vo;

import java.sql.Date;

public class Write {

	private int reviewNo;
	private String reviewTitle;
	private Date reviewDate;
	private String reviewWriter;
	private int views;
	private String staus;
	
	
	public Write(){}


	public Write(int reviewNo, String reviewTitle, Date reviewDate, String reviewWriter, int views, String staus) {
		super();
		this.reviewNo = reviewNo;
		this.reviewTitle = reviewTitle;
		this.reviewDate = reviewDate;
		this.reviewWriter = reviewWriter;
		this.views = views;
		this.staus = staus;
	}


	public int getReviewNo() {
		return reviewNo;
	}


	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}


	public String getReviewTitle() {
		return reviewTitle;
	}


	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}


	public Date getReviewDate() {
		return reviewDate;
	}


	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}


	public String getReviewWriter() {
		return reviewWriter;
	}


	public void setReviewWriter(String reviewWriter) {
		this.reviewWriter = reviewWriter;
	}


	public int getViews() {
		return views;
	}


	public void setViews(int views) {
		this.views = views;
	}


	public String getStaus() {
		return staus;
	}


	public void setStaus(String staus) {
		this.staus = staus;
	}


	@Override
	public String toString() {
		return "Write [reviewNo=" + reviewNo + ", reviewTitle=" + reviewTitle + ", reviewDate=" + reviewDate
				+ ", reviewWriter=" + reviewWriter + ", views=" + views + ", staus=" + staus + "]";
	}
	

	
	
}
