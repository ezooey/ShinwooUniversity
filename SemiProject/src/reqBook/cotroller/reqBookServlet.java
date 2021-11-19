package reqBook.cotroller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reqBook.service.reqBookService;
import reqBook.vo.ReqBook;

/**
 * Servlet implementation class reqBookServlet
 */
@WebServlet("/reqBook.li")
public class reqBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reqBookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<ReqBook> list = new reqBookService().selectList();
		
		String page = null;
		if(list != null) { 
			request.setAttribute("list", list);
			page = "WEB-INF/views/reqBook/reqBook.jsp";
		} else { 
			request.setAttribute("msg", "공지사항 조회 실패");
			page = "WEB-INF/views/common/erroePage.jsp";
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
