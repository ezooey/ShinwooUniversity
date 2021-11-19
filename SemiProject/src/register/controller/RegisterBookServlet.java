package register.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;

import common.MyFileRenamePolicy;

/**
 * Servlet implementation class RegisterBookFormServlet
 */
@WebServlet("/register.bo")
public class RegisterBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterBookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		if(ServletFileUpload.isMultipartContent(request)) {
			
			int maxSize = 1024*1024*10; 
			String root = request.getSession().getServletContext().getRealPath("/"); 
			String savePath = root + "image/";
			
			File f = new File(savePath);
			if(!f.exists()) {
				f.mkdirs(); 
			}
			
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy()); 

			ArrayList<String> saveFiles = new ArrayList<String>(); 
			ArrayList<String> originFiles = new ArrayList<String>(); 
			
//			Enumeration<String> files = multiRequest.getFileNames(); 
//			while(files.hasMoreElements()) { 
//				String name = files.nextElement();
//				
//				if(multiRequest.getFilesystemName(name) != null) {
//					saveFiles.add(multiRequest.getFilesystemName(name));
//					originFiles.add(multiRequest.getOriginalFileName(name)); 
//				}
//			}
//			
//			String title = multiRequest.getParameter("bookTitle");
//			String author = multiRequest.getParameter("author");
//			String publisher = multiRequest.getParameter("publisher");
//			int category = Integer.parseInt(multiRequest.getParameter("category"));
//			
//			Book b = new Board(0, 2, "10", title, content, writer, null, 0, null, null, null);
//			
//			ArrayList<Attachment> fileList = new ArrayList<Attachment>();
//			for(int i = originFiles.size() - 1; i >= 0; i--) {
//				Attachment a = new Attachment();
//				a.setFilePath(savePath);
//				a.setOriginName(originFiles.get(i));
//				a.setChangeName(saveFiles.get(i));
//				
//				if(i == originFiles.size() - 1) {
//					a.setFileLevel(0);
//				} else {
//					a.setFileLevel(1);
//				}
//				
//				fileList.add(a);
//			}
//			
//			int result = new BoardService().insertThumbnail(b, fileList);
//			
//			if(result >= 1 + fileList.size()) {
//				response.sendRedirect("list.th");
//			} else {
//				request.setAttribute("msg", "사진 게시판 등록 실패");
//				request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);
//				
//				for(int i = 0; i < saveFiles.size(); i++) {
//					File fail = new File(savePath + saveFiles.get(i));
//					fail.delete();
//				}
//			}
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
