package reqBook.model.cotroller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reqBook.model.service.ReqBookService;
import reqBook.model.vo.ReqBook;

/**
 * Servlet implementation class ReqBookdefineServelet
 */
@WebServlet("/reqBook.def")
public class ReqBookdefineServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReqBookdefineServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		int reqNo = Integer.parseInt(request.getParameter("reqNo")); 
		String reason = request.getParameter("reason");	
		
		System.out.println(reason);
		
		ReqBook r = new ReqBookService().defineList(reqNo,reason);
		int result = new ReqBookService().insertReason(reqNo,reason);
		
		String page = null;
		if(r != null && result > 0) {
			page = "WEB-INF/views/common/resultPage2.jsp";
			request.setAttribute("msg", "거절  실패");
		} else {
			page = "WEB-INF/views/common/resultPage.jsp";
			request.setAttribute("msg", "신청이 거절되었습니다.");
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
