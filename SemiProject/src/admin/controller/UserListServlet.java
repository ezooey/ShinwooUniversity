package admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.model.service.AdminService;
import admin.model.vo.PageInfo;
import admin.model.vo.UserList;

/**
 * Servlet implementation class UserListServlet
 */
@WebServlet("/userList.ul")
public class UserListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * int listCount; int currentPage; int pageLimit; int boardLimit; int maxPage;
		 * int startPage; int endPage;*/
		  
//		  AdminService aService = new AdminService(); 
		/* listCount = aService.getListCount();
		 
		 
		 * // 페이징처리 2 단계 : 현재 페이지 설정 currentPage = 1;
		 * if(request.getParameter("currentPage") != null) { currentPage =
		 * Integer.parseInt(request.getParameter("currentPage")); }
		 * 
		 * pageLimit = 10; boardLimit = 10;
		 * 
		 * maxPage = (int)Math.ceil((double)listCount / boardLimit); startPage =
		 * (currentPage - 1) / pageLimit * pageLimit + 1; endPage = startPage +
		 * pageLimit - 1; if(maxPage < endPage) { endPage = maxPage; }
		 * 
		 * PageInfo pi = new PageInfo(currentPage, listCount, pageLimit, boardLimit,
		 * maxPage, startPage, endPage);
		 */
		
		ArrayList<UserList> uList = new AdminService().selectUserList();
		
		String page = null;
		if(uList != null) { 
			request.setAttribute("uList", uList);
			page = "WEB-INF/views/admin/userList.jsp";
		} else { 
 			request.setAttribute("msg", "공지사항 조회 실패");
 			page = "WEB_INF/views/common/errorPage.jsp";
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
