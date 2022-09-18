package pboard.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import pboard.dto.PBoardCommentDTO;
import pboard.dto.PBoardDTO;
import sqlmap.MybatisManager;

public class PBoardDAO {

	public List<PBoardDTO> list(int start, int end){
		List<PBoardDTO> list=null;
		SqlSession session=null;
		//혹시 있을지 모를 예외발생을 처리하기 위해 try문 쓰는게 좋다.
		try {
			session=MybatisManager.getInstance().openSession();
			Map<String,Object> map=new HashMap<>();
			map.put("start", start);
			map.put("end", end);
			list=session.selectList("pboard.list", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
		return list;
	}
	
	//게시물 저장
		public void insert(PBoardDTO dto) {
			SqlSession session=null;
			try {
				session=MybatisManager.getInstance().openSession();
				session.insert("pboard.insert", dto);
				session.commit();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if(session != null) session.close();
			}
		}

		public String getFileName(int num) {
			String result="";
			SqlSession session=null;
			try {
				session=MybatisManager.getInstance().openSession();
				result=session.selectOne("pboard.getFileName", num);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if(session != null) session.close();
			}
			return result;
		}

		public void plusDown(int num) {
			SqlSession session=null;
			try {
				session=MybatisManager.getInstance().openSession();
				session.insert("pboard.plusDown", num);
				session.commit();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if(session != null) session.close();
			}
			
			
		}

		public PBoardDTO view(int num) {
			PBoardDTO dto=null;
			SqlSession session=null;
			try {
				session=MybatisManager.getInstance().openSession();
				dto=session.selectOne("pboard.view", num);
				//줄바꿈 처리
				String content=dto.getContent();
				content=content.replace("\n", "<br>");
				dto.setContent(content);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if(session != null) session.close();
			}
			return dto;
		}
		
		//조회수 증가 처리
		public void plusReadCount(int num, HttpSession count_session) {
			SqlSession session=null;
			try {
				session=MybatisManager.getInstance().openSession();
				long read_time=0;
				if(count_session.getAttribute("read_time_"+num) != null) {
					read_time=(long)count_session.getAttribute("read_time_"+num);
				}
				long current_time=System.currentTimeMillis();//현재시각
				if(current_time-read_time > 5*1000) {//현재시간-읽은시간>5초, 24*60*60*1000(24시)
					session.update("pboard.plusReadCount", num);
					session.commit();
					//최근 열람 시각 업데이트
					count_session.setAttribute("read_time_"+num, current_time);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if(session != null) session.close();
			}
		}

		public List<PBoardCommentDTO> commentList(int num) {
			List<PBoardCommentDTO> list=null;
			SqlSession session=null;
			try {
				session=MybatisManager.getInstance().openSession();
				list=session.selectList("pboard.commentList", num);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if(session != null) session.close();
			}
			return list;
		}

		//댓글 추가
		public void commentAdd(PBoardCommentDTO dto) {
			SqlSession session=null;
			try {
				session=MybatisManager.getInstance().openSession();
				session.insert("pboard.commentAdd", dto);
				session.commit();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if(session != null) session.close();
			}
		}

		//답글 순서 조정
		public void updateStep(int ref, int re_step) {
			SqlSession session=null;
			try {
				session=MybatisManager.getInstance().openSession();
				PBoardDTO dto=new PBoardDTO();
				dto.setRef(ref);
				dto.setRe_step(re_step);
				session.update("pboard.updateStep", dto);
				session.commit();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if(session != null) session.close();
			}
		}

		//답글 쓰기
		public void reply(PBoardDTO dto) {
			SqlSession session=null;
			try {
				session=MybatisManager.getInstance().openSession();
				session.insert("pboard.reply", dto);
				session.commit();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if(session != null) session.close();
			}
			
		}

		//비밀번호 체크
		public String passwdCheck(int num, String passwd) {
			String result=null;
			SqlSession session=null;
			try {
				session=MybatisManager.getInstance().openSession();
				Map<String,Object> map=new HashMap<>();
				map.put("num", num);
				map.put("passwd", passwd);
				result=session.selectOne("pboard.pass_check", map);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if(session != null) session.close();
			}
			
			return result;
		}

		public void update(PBoardDTO dto) {
			SqlSession session=null;
			try {
				session=MybatisManager.getInstance().openSession();
				session.update("pboard.update", dto);
				session.commit();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if(session != null) session.close();
			}
			
		}

		public void delete(int num) {
			SqlSession session=null;
			try {
				session=MybatisManager.getInstance().openSession();
				session.update("pboard.delete", num);//진짜삭제가 아니기에 update()
				session.commit();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if(session != null) session.close();
			}
			
			
		}

		public List<PBoardDTO> searchList(String search_option, String keyword) {
			List<PBoardDTO> list=null;
			//try~with문 : java 1.7이상 부터 사용가능
			//try(){}문장에서 finally절을 안써도 자동으로 리소스가 정리된다.
			try(SqlSession session=MybatisManager.getInstance().openSession()){
				Map<String,String> map=new HashMap<>();//좌:부, 우:자 => 다형성기법
				map.put("search_option", search_option);
				map.put("keyword", "%"+keyword+"%");
				list=session.selectList("pboard.searchList", map);
			}catch (Exception e) {
				e.printStackTrace();
			}
			return list;
		}
		
		//게시물 갯수 계산
		public int count() {
			int result=0;
			try(SqlSession session=MybatisManager.getInstance().openSession()){
				result=session.selectOne("pboard.count");
			}catch (Exception e) {
				e.printStackTrace();
			}
			return result;
		}


		public void delete_admin(int num) {
			SqlSession session=MybatisManager.getInstance().openSession();
			session.delete("pboard.adminDelete",num);
			session.commit();
			session.close();
		}
		
}
