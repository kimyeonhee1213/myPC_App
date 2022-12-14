package pboard;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import common.Constants;
import page.Pager;
import pboard.dao.PBoardDAO;
import pboard.dto.PBoardCommentDTO;
import pboard.dto.PBoardDTO;
import pmember.dao.PMemberDAO;
import pmember.dto.PMemberDTO;


@WebServlet("/pboard_servlet/*")
public class PBoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//클라이언트에서 요청한 주소처리
		String url=request.getRequestURL().toString();
		//컨텍스트 패스
		String contextPath=request.getContextPath();
		//dao 인스턴스 생성
		PBoardDAO dao=new PBoardDAO();
		if(url.indexOf("list.do") != -1) {
			//레코드 갯수 계산
			int count = dao.count();
			//페이지 나누기 처리
			int curPage = 1;
			//숫자처리는 null포인트 exception이 잘 일어나서 if물 처리해주는게 좋음
			if(request.getParameter("curPage") != null) {
				curPage = Integer.parseInt(request.getParameter("curPage"));
			}
			Pager pager = new Pager(count,curPage);
			int start = pager.getPageBegin();
			int end = pager.getPageEnd();
			
			//System.out.println("list.do 호출");
			List<PBoardDTO> list=dao.list(start,end);
			request.setAttribute("list", list);
			request.setAttribute("page", pager);
			String page="/pboard/list.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
		}else if(url.indexOf("list_admin.do") != -1) {
			//레코드 갯수 계산
			int count = dao.count();
			//페이지 나누기 처리
			int curPage = 1;
			//숫자처리는 null포인트 exception이 잘 일어나서 if물 처리해주는게 좋음
			if(request.getParameter("curPage") != null) {
				curPage = Integer.parseInt(request.getParameter("curPage"));
			}
			Pager pager = new Pager(count,curPage);
			int start = pager.getPageBegin();
			int end = pager.getPageEnd();
			
			//System.out.println("list.do 호출");
			List<PBoardDTO> list=dao.list(start,end);
			request.setAttribute("list", list);
			request.setAttribute("page", pager);
			String page="/pboard/list_admin.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
		}else if(url.indexOf("insert.do") != -1) {
			//파일업로드 처리
			File uploadDir = new File(Constants.UPLOAD_PATH);
			if(!uploadDir.exists()) {//업로드디렉토리가 존재하지 않으면
				uploadDir.mkdir();//디렉토리 만듦
			}
			MultipartRequest multi=new MultipartRequest(request,Constants.UPLOAD_PATH,
					Constants.MAX_UPLOAD,"utf-8",new DefaultFileRenamePolicy());
		
			//request.getParameter 대신 multi.getParameter로 바꿔야한다.
			String userid=multi.getParameter("userid");
			String boardtype=multi.getParameter("boardtype");
			String subject=multi.getParameter("subject");
			String content=multi.getParameter("content");
			String passwd=multi.getParameter("passwd");
			//클라이언트의 ip주소 가져오기
			String ip=request.getRemoteAddr();
			if(ip.equalsIgnoreCase("0:0:0:0:0:0:0:1")) {
				InetAddress inetAddress=InetAddress.getLocalHost();
				ip=inetAddress.getHostAddress();
			}
			System.out.println("클라이언트IP 주소 :"+ip);
			String filename=" "; //공백 1개
			int filesize=0;
			
			try {
				//첨부파일의 집합
				Enumeration files=multi.getFileNames();
				//다음요소가 있으면
				while (files.hasMoreElements()) {
					//첨부파일의 이름
					String file1=(String)files.nextElement();
					filename=multi.getFilesystemName(file1);
					File f1=multi.getFile(file1);
					if(f1 != null) {
						filesize=(int)f1.length();//파일 사이즈 저장
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			PBoardDTO dto=new PBoardDTO();
			dto.setUserid(userid);
			dto.setBoardtype(boardtype);
			dto.setSubject(subject);
			dto.setContent(content);
			dto.setPasswd(passwd);
			dto.setIp(ip);
			//파일 첨부를 하지 않을 경우
			if(filename == null || filename.trim().equals("")) {
				filename="-";
			}
			
			dto.setFilename(filename);
			dto.setFilesize(filesize);
			
			dao.insert(dto);
			String page="/pboard_servlet/list.do";
			response.sendRedirect(contextPath+page);
		}else if(url.indexOf("downlaod.do") != -1) {
			int num=Integer.parseInt(request.getParameter("num"));
			String filename=dao.getFileName(num);
			System.out.println("첨부파일 이름 : " + filename);
			//업로드되었던 파일의 위치정보값을 path에 저장
			String path=Constants.UPLOAD_PATH+filename;
			byte b[]=new byte[4096]; //바이트배열 생성
			//업로드 폴더에 저장된 파일을 읽기 위한 스트림 생성
			FileInputStream fis=new FileInputStream(path);
			//mimeType(파일의 종류 - img, mp3, txt ...등)
			String mimeType=getServletContext().getMimeType(path);
			//스트림 방식의 파일 다운로드시 한글 파일명 관련 브라우저 헤더 처리
			//octect-stream : 8비트로 된 일련의 데이터를 뜻하며 모든 종류의 이진데이터를 처리
			if(mimeType==null) {
				mimeType="application/octect-stream;charset=utf-8";
			}
			//파일 이름에 한글이 포함된 경우 header로 값을 보내게 되는데 header에는 한글이나
			//특수문자가 올 수 없기 때문에 톰캣서버의 기본셋팅언어인 서유럽언어 8859_1을 한글처리가
			//가능한 utf-8로 인코딩 처리해야 한다.
			//new String(filename.getBytes("변환될인코딩값"),"기본인코딩값")
			filename=new String(filename.getBytes("utf-8"),"8859_1");
			
			response.setHeader("Content-Disposition", "attachment;filename="+filename);
			
			//OutputStream 생성(서버에서 클라이언트에 쓰기)
			ServletOutputStream out=response.getOutputStream();
			int numRead;
			while (true) {
				numRead = fis.read(b,0,b.length);//데이터 읽음
				if(numRead == -1) break; //더 이상 내용이 없으면
				out.write(b, 0, numRead); //데이터 쓰기
			}
			//파일 처리 관련 리소스 정리
			out.flush();
			out.close();
			fis.close();
			//다운로드 횟수 증가 처리
			dao.plusDown(num);
		}else if(url.indexOf("view.do") != -1) {
			int num=Integer.parseInt(request.getParameter("num"));
			HttpSession session=request.getSession();
			
			//조회수 증가 처리
			dao.plusReadCount(num, session);
			PBoardDTO dto=dao.view(num);
			request.setAttribute("dto", dto);
			String page="/pboard/view.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
		}else if(url.indexOf("commentList.do") != -1) {
			int num=Integer.parseInt(request.getParameter("num"));
			System.out.println("댓글을 위한 게시물번호 : "+num);
			//댓글 목록 리턴
			List<PBoardCommentDTO> list=dao.commentList(num);
			//request영역에 저장
			request.setAttribute("list", list);
			String page="/pboard/comment_list.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
		}else if(url.indexOf("comment_add.do") != -1) {
			PBoardCommentDTO dto=new PBoardCommentDTO();
			int pboard_num=Integer.parseInt(request.getParameter("pboard_num"));
			String writer=request.getParameter("writer");
			String content=request.getParameter("content");
			dto.setPboard_num(pboard_num);
			dto.setWriter(writer);
			dto.setContent(content);
			dao.commentAdd(dto);
		}else if(url.indexOf("reply.do") != -1) {
			int num=Integer.parseInt(request.getParameter("num"));
			PBoardDTO dto=dao.view(num);
			dto.setContent("===게시물의 내용===\n"+dto.getContent());
			request.setAttribute("dto", dto);
			String page="/pboard/reply.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
		}else if(url.indexOf("insertReply.do") != -1) {
			int num=Integer.parseInt(request.getParameter("num"));
			PBoardDTO dto=dao.view(num);
			int ref=dto.getRef();//답변 그룹 번호
			int re_step=dto.getRe_step();//출력순번
			int re_level=dto.getRe_level();//답변 단계
			String userid=request.getParameter("userid");
			String boardtype=request.getParameter("boardtype");
			String subject=request.getParameter("subject");
			String content=request.getParameter("content");
			String passwd=request.getParameter("passwd");
			dto.setUserid(userid);
			dto.setBoardtype(boardtype);
			dto.setSubject(subject);
			dto.setContent(content);
			dto.setPasswd(passwd);
			dto.setRef(ref);
			dto.setRe_step(re_step);
			dto.setRe_level(re_level);
			//첨부파일 관련 정보
			dto.setFilename("-");
			dto.setFilesize(0);
			dto.setDown(0);
			//답글 순서 조정
			dao.updateStep(ref, re_step);
			
			//답글 쓰기
			dao.reply(dto);
			
			//목록으로 이동
			String page="/pboard_servlet/list.do";
			response.sendRedirect(contextPath+page);
		}else if(url.indexOf("pass_check.do") != -1) {
			int num=Integer.parseInt(request.getParameter("num"));
			String passwd=request.getParameter("passwd");
			//비밀번호가 맞는지 확인
			String result=dao.passwdCheck(num, passwd);
			String page="";
			if(result != null) {//비밀번호가 맞으면
				page="/pboard/edit.jsp";
				request.setAttribute("dto", dao.view(num));
				RequestDispatcher rd=request.getRequestDispatcher(page);
				rd.forward(request, response);
			}else {//비번이 틀리면
				page=contextPath+"/pboard_servlet/view.do?num="+num+"&message=error";
				response.sendRedirect(page);
			}
		}else if(url.indexOf("update.do") != -1) {
			//파일업로드 처리
			//디렉토리가 없으면 생성
			File uploadDir=new File(Constants.UPLOAD_PATH);
			if(!uploadDir.exists()){
				uploadDir.mkdir();
			}
			MultipartRequest multi=new MultipartRequest(
				request, Constants.UPLOAD_PATH, Constants.MAX_UPLOAD
				, "utf-8", new DefaultFileRenamePolicy() );
			
			int num=Integer.parseInt(multi.getParameter("num"));
			String userid=multi.getParameter("userid");
			String boardtype=multi.getParameter("boardtype");
			String subject=multi.getParameter("subject");
			String content=multi.getParameter("content");
			String passwd=multi.getParameter("passwd");
			String ip=request.getRemoteAddr(); //클라이언트의 ip주소
			System.out.println("수정시 ip주소 : "+ip);
			
			String filename=" "; //공백 1개
			int filesize=0;
			try {
				//첨부파일의 집합
				Enumeration files=multi.getFileNames();
				//다음 요소가 있으면
				while(files.hasMoreElements()){
					//첨부파일의 이름
					String file1=(String)files.nextElement();
					filename=multi.getFilesystemName(file1);
					File f1=multi.getFile(file1);
					if(f1 != null){
						filesize=(int)f1.length(); //파일 사이즈 저장
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			PBoardDTO dto=new PBoardDTO();
			dto.setNum(num); 
			dto.setUserid(userid);
			dto.setBoardtype(boardtype);
			dto.setSubject(subject);
			dto.setContent(content);
			dto.setPasswd(passwd);
			dto.setIp(ip);
			System.out.println(dto);

			if(filename == null || filename.trim().equals("")){
				//새로운 첨부파일이 없을 때(테이블의 기존정보를 가져옴)
				PBoardDTO dto2=dao.view(num);
				String fName=dto2.getFilename();
				int fSize=dto2.getFilesize();
				int fDown=dto2.getDown();
				dto.setFilename(fName);
				dto.setFilesize(fSize);
				dto.setDown(fDown);
			}else{ 
				//새로운 첨부파일이 있을 때
				dto.setFilename(filename);
				dto.setFilesize(filesize);
			}

			//첨부파일 삭제 처리
			String fileDel=multi.getParameter("fileDel");
			//체크박스에 체크되었으면, value없이 썼기 때문에 on이 디폴트가됨
			if(fileDel != null && fileDel.equals("on")){
				String fileName=dao.getFileName(num);
				File f=new File(Constants.UPLOAD_PATH+fileName);
				f.delete(); //파일 삭제
				//첨부파일 정보를 지움
				dto.setFilename("-");
				dto.setFilesize(0);
				dto.setDown(0); 
			}
			//레코드 수정
			dao.update(dto);
			//페이지 이동
			String page="/pboard_servlet/list.do";
			response.sendRedirect(contextPath+page);
		}else if(url.indexOf("delete.do") != -1) {
			//파일 업로드를 안쓰더라도 MultipartRequest 처리를 해야한다.
			MultipartRequest multi=new MultipartRequest(
					request, Constants.UPLOAD_PATH, Constants.MAX_UPLOAD
					, "utf-8", new DefaultFileRenamePolicy());
			//삭제할 게시물 번호
			int num = Integer.parseInt(multi.getParameter("num"));
			dao.delete(num);
			//페이지 이동
			String page = "/pboard_servlet/list.do";
			response.sendRedirect(contextPath+page);
		}else if(url.indexOf("search.do") != -1) {
			//검색옵션과 검색 키워드
			String search_option = request.getParameter("search_option");
			String keyword = request.getParameter("keyword");
			List<PBoardDTO> list = dao.searchList(search_option,keyword);
			request.setAttribute("list", list);
			request.setAttribute("search_option", search_option);
			request.setAttribute("keyword", keyword);
			String page = "/pboard/search.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		}else if(url.indexOf("delete2.do") !=  -1) {
			int num=Integer.parseInt(request.getParameter("num"));
			dao.delete_admin(num);
			String page = "/pboard_servlet/list_admin.do";
			response.sendRedirect(contextPath+page);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
