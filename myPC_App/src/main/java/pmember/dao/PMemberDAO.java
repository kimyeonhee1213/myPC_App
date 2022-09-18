package pmember.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import pmember.dto.PMemberDTO;
import sqlmap.MybatisManager;

public class PMemberDAO {
	public String login(PMemberDTO dto) {
		SqlSession session = MybatisManager.getInstance().openSession();
		String name = session.selectOne("pmember.login",dto);
		session.close();
		return name;
	}
	
	public List<PMemberDTO> getList(){
		SqlSession session = MybatisManager.getInstance().openSession();
		List<PMemberDTO> list = session.selectList("memberList");
		session.close();
		return list;
	}

	public PMemberDTO memberDetail(String userid) {
		PMemberDTO dto = new PMemberDTO();
		SqlSession session = MybatisManager.getInstance().openSession();
		dto = session.selectOne("memberDetail",userid);
		session.close();
		return dto;
	}
	
	public PMemberDTO selfDetail(String userid) {
		PMemberDTO dto = new PMemberDTO();
		SqlSession session = MybatisManager.getInstance().openSession();
		dto = session.selectOne("selfDetail",userid);
		session.close();
		return dto;
	}
	
	public void memberUpdate(PMemberDTO dto) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.update("pmember.memberUpdate",dto);
		session.commit();
		session.close();
	}

	//게시물 삭제
	public void memberDelete(String userid) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.delete("pmember.memberDelete",userid);
		session.commit();
		session.close();
	}

	public void insert(PMemberDTO dto) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.insert("pmember.insert", dto);
		session.commit();
		session.close();
	}

	public void selfUpdate(PMemberDTO dto) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.update("pmember.selfUpdate",dto);
		session.commit();
		session.close();
	}
	
	public void selfDelete(String userid) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.delete("pmember.selfDelete",userid);
		session.commit();
		session.close();
	}

	public String idCheck(String param) {
		SqlSession session=MybatisManager.getInstance().openSession();
		String result = session.selectOne("pmember.idCheck",param);
		session.commit();
		session.close();
		return result;
	}

	
}
