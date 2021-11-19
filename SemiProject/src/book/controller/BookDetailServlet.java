package book.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import book.model.service.BookDetailService;
import book.model.vo.BookDetail;

/**
 * Servlet implementation class BookDetail
 */
@WebServlet("/bookDetail.bo")
public class BookDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bNo = request.getParameter("bNo");
		String rId = request.getParameter("rId");
		BookDetail bd = new BookDetailService().selectBook(bNo);
		System.out.println(bd);
		int currBorrow = new BookDetailService().currBorrow(bNo);
		int maxBorrow = 2;
		int returnCheck = new BookDetailService().returnCheck(rId, bNo);
		
		String page = null;
		if(bd != null && rId != null) {
			page = "WEB-INF/views/book/bookDetail_User.jsp";
			request.setAttribute("bookDetail", bd);
			request.setAttribute("currBorrow", currBorrow);
			request.setAttribute("max", maxBorrow);
			request.setAttribute("check", returnCheck);
		} else if(bd != null && rId == null) {
			page = "WEB_INF/views/book/bookDetail_Visitor.jsp";
			request.setAttribute("bookDetail", bd);
			request.setAttribute("currBorrow", currBorrow);
			request.setAttribute("max", maxBorrow);
			request.setAttribute("check", returnCheck);
		} else if(bd == null) {
			page = "WEB-INF/views/common/errorPage.jsp";
			request.setAttribute("msg", "도서 상세 조회 실패");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
     