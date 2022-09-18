package pmember;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pmember.dao.PMemberDAO;
import pmember.dto.PMemberDTO;


@WebServlet("/pmember_servlet/*")
public class PMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		PMemberDAO dao = new PMemberDAO();
		if(uri.indexOf("login.do")!= -1) {
			String userid = request.getParameter("userid");
			String passwd = request.getParameter("passwd");
			PMemberDTO dto = new PMemberDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			String name = dao.login(dto);
			if(name == null) {
				String page = path+"/pmember/login.jsp?message=error1";
				response.sendRedirect(page);
			}else { //로그인 성공시
				HttpSession session = request.getSession();
				session.setAttribute("userid", userid);
				session.setAttribute("name", name);
				String page ="/index.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(page);
				rd.forward(request, response);
			}
		}else if(uri.indexOf("logout.do") != -1) {
			HttpSession session = request.getSession();
			session.invalidate();
			String page = path+"/pmember/login.jsp?message=logout";
			response.sendRedirect(page);
		}else if(uri.indexOf("list.do") != -1) {
			List<PMemberDTO> items = dao.getList();
			request.setAttribute("list", items);
			request.setAttribute("count", items.size());
			String page = "/pmember/member_list.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		}else if(uri.indexOf("view.do") != -1) {
			String userid = request.getParameter("userid");
			String url = "/pmember/edit.jsp";
			PMemberDTO dto = dao.memberDetail(userid);
			request.setAttribute("dto", dto);
			RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		}else if(uri.indexOf("view_my.do") != -1) {
			String userid = request.getParameter("userid");
			String url = "/pmember/edit_my.jsp";
			PMemberDTO dto = dao.selfDetail(userid);
			request.setAttribute("dto", dto);
			RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		}else if(uri.indexOf("update.do") != -1) {
			String userid = request.getParameter("userid");
			String name = request.getParameter("name");
			String passwd = request.getParameter("passwd");
			String phone = request.getParameter("phone");
			String userole = request.getParameter("userole");
			PMemberDTO dto = new PMemberDTO();
			dto.setName(name);
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			dto.setPhone(phone);
			dto.setUserole(userole);
			dao.memberUpdate(dto);
			String url = "/pmember_servlet/list.do";
			response.sendRedirect(request.getContextPath()+url);
		}else if(uri.indexOf("update_self.do") != -1){
			String userid = request.getParameter("userid");
			String name = request.getParameter("name");
			String passwd = request.getParameter("passwd");
			String phone = request.getParameter("phone");
			String zipcode = request.getParameter("zipcode");
			String address = request.getParameter("address");
			String address2 = request.getParameter("address2");
			String email = request.getParameter("email");
			PMemberDTO dto = new PMemberDTO();
			dto.setName(name);
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			dto.setPhone(phone);
			dto.setZipcode(zipcode);
			dto.setAddress(address);
			dto.setAddress2(address2);
			dto.setEmail(email);
			dao.selfUpdate(dto);
			String page = "/index.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		}else if(uri.indexOf("delete.do") != -1) {
			String userid = request.getParameter("userid");
			dao.memberDelete(userid);
			String url = "/pmember_servlet/list.do";
			response.sendRedirect(request.getContextPath()+url);
		}else if(uri.indexOf("delete_self.do") != -1) {
			String userid = request.getParameter("userid");
			dao.selfDelete(userid);
			HttpSession session = request.getSession();
			session.invalidate();
			String page =path+"/index.jsp?message=delete_self";
			response.sendRedirect(page);
		}else if(uri.indexOf("join.do") != -1) {
			String userid = request.getParameter("userid");
			String passwd = request.getParameter("passwd");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String zipcode = request.getParameter("zipcode");
			String address = request.getParameter("address");
			String address2 = request.getParameter("address2");
			PMemberDTO dto = new PMemberDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			dto.setName(name);
			dto.setEmail(email);
			dto.setPhone(phone);
			dto.setZipcode(zipcode);
			dto.setAddress(address);
			dto.setAddress2(address2);
			dao.insert(dto);
			String page = path+"/index.jsp?message=join";
			response.sendRedirect(page);
		}else if(uri.indexOf("idCheck.do") != -1) {
			String jungbokid = dao.idCheck(request.getParameter("userid"));
			if(jungbokid == null) {
				jungbokid = "";
			}
			request.setAttribute("jungbokid", jungbokid);
			request.setAttribute("id", request.getParameter("userid"));
			String page = "/pmember/check.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
