package multi.com.pet.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import multi.com.pet.mypage.*;
@Service
public class MypageDAOimpl implements MypageDAO {
	
	SqlSession sqlSession;
	public MypageDAOimpl() {
		
	}
	@Autowired
	public MypageDAOimpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	@Override
	public int insert(MypageDTO sitter) {
	
		return sqlSession.insert("multi.com.pet.mypage.write", sitter);
	}

	@Override
	public List<MypageDTO> sitterList() {
		
		List<MypageDTO> list = sqlSession.selectList("multi.com.pet.mypage.selectall");
		
		
		return  list;
	}

	@Override
	public MypageDTO read(String sitter_id) {
		return sqlSession.selectOne("multi.com.pet.mypage.read", sitter_id);
	}

	@Override
	public int update(MypageDTO sitter) {
		return sqlSession.update("multi.com.pet.mypage.update", sitter);
	}

	@Override
	public int delete(String sitter_id) {
		return sqlSession.delete("multi.com.pet.mypage.delete",sitter_id);
	}
	@Override
	public List<MypageDTO> search(String data) {
		return sqlSession.selectList("multi.com.pet.mypage.search",data);
	}
	@Override
	public List<MypageDTO> search(String tag, String data) {
		
		Map<String,String> map = new HashMap<String, String>();
		map.put("tag", tag);
		map.put("data", data);
		return sqlSession.selectList("multi.com.pet.mypage.dynamicSearch",map);
	}
	@Override
	public List<MypageDTO> findByCategory(String category) {
		return sqlSession.selectList("multi.com.pet.mypage.categorySelect",category);
	}

}
