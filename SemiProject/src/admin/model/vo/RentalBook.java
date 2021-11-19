package admin.model.vo;

import java.sql.Date;

public class RentalBook {
	private String memberId;
	private String memberName;
	private String bookNo;
	private String bookTitle;
	private String author;
	private Date rentalDate;
	private Date returnDate;

	public RentalBook() {}

	public RentalBook(String bookNo, String bookTitle, String author, String memberId, String memberName,
			Date rentalDate, Date returnDate) {
		super();
		this.memberId = memberId;
		this.memberName = memberName;
		this.bookNo = bookNo;
		this.bookTitle = bookTitle;
		this.author = author;
		this.rentalDate = rentalDate;
		this.returnDate = returnDate;
	}
	public String getMemberId() {
		return memberId;
	}
	
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	public String getMemberName() {
		return memberName;
	}
	
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getBookNo() {
		return bookNo;
	}

	public void setBookNo(String bookNo) {
		this.bookNo = bookNo;
	}

	public String getBookTitle() {
		return bookTitle;
	}

	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}


	public Date getRentalDate() {
		return rentalDate;
	}

	public void setRentalDate(Date rentalDate) {
		this.rentalDate = rentalDate;
	}

	public Date getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(Date returnDate) {
		this.returnDate = returnDate;
	}

	@Override
	public String toString() {
		return "RentalBook [bookNo=" + bookNo + ", bookTitle=" + bookTitle + ", author=" + author + ", memberId="
				+ memberId + ", memberName=" + memberName + ", rentalDate=" + rentalDate + ", returnDate=" + returnDate
				+ "]";
	}
	
	
}
