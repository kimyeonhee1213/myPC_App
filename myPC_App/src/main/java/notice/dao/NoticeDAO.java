package notice.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import notice.dto.NoticeDTO;
import pboard.dto.PBoardDTO;
import sqlmap.MybatisManager;

public class NoticeDAO {
	public List<NoticeDTO> getList(){
		SqlSession session = null;
		List<NoticeDTO> list = null;
		try {
			session = MybatisManager.getInstance().openSession();
			list = session.selectList("notice.list");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
		return list;
	}

	public void insertNotice(NoticeDTO dto) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.insert("notice.insert", dto);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
	}

	public NoticeDTO view(int idx) {
		NoticeDTO dto=null;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			dto=session.selectOne("notice.view", idx);
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

	public void delete(int idx) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.delete("notice.delete",idx);
		session.commit();
		session.close();
	}
}
