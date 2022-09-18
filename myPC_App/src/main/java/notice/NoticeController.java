package notice;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import notice.dao.NoticeDAO;
import notice.dto.NoticeDTO;


@WebServlet("/notice_servlet/*")
public class NoticeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		String contextPath=request.getContextPath();
		NoticeDAO dao = new NoticeDAO();
		if(uri.indexOf("list.do") != -1) {
			List<NoticeDTO> list = dao.getList();
			request.setAttribute("list", list);
			request.setAttribute("count", list.size());
			String page = "/notice/list.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		}else if(uri.indexOf("list_admin.do") != -1) {
			List<NoticeDTO> list = dao.getList();
			request.setAttribute("list", list);
			request.setAttribute("count", list.size());
			String page = "/notice/list_admin.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		}else if(uri.indexOf("insert.do") != -1) {
			String userid = request.getParameter("userid");
			String passwd = request.getParameter("passwd");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			NoticeDTO dto = new NoticeDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			dto.setTitle(title);
			dto.setContent(content);
			dao.insertNotice(dto);
			String page = "/notice_servlet/list_admin.do";
			response.sendRedirect(contextPath+page);
		}else if(uri.indexOf("view.do") != -1) {
			int idx = Integer.parseInt(request.getParameter("idx"));
			HttpSession session = request.getSession();
			NoticeDTO dto = dao.view(idx);
			request.setAttribute("dto", dto);
			String page = "/notice/view.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		}else if(uri.indexOf("delete.do") != -1) {
			int idx=Integer.parseInt(request.getParameter("idx"));
			dao.delete(idx);
			String page = "/notice_servlet/list_admin.do";
			response.sendRedirect(contextPath+page);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
