package multi.com.pet.resv;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mutli.com.pet.erp.SitterDTO;

@Repository
public class ResvDAOImpl implements ResvDAO {
	SqlSession sqlsession;
	
	@Autowired
	public ResvDAOImpl(SqlSession sqlsession) {
		super();
		this.sqlsession = sqlsession;
	}

	@Override
	public List<SitterDTO> directlistAllgender(String size, String code, String shortAddr) {
		Map<String, String> map = new HashMap<String, String>();
		System.out.println("allgenderdao");
		map.put("size", size);
		map.put("code", code);
		map.put("shortAddr", shortAddr);
		return sqlsession.selectList("mutli.com.pet.resv.directlistAllgender", map);
	}

	@Override
	public List<SitterDTO> directlistBygender(String gender, String size, String code, String shortAddr) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("gender", gender);
		map.put("size", size);
		map.put("code", code);
		map.put("shortAddr", shortAddr);
		return sqlsession.selectList("mutli.com.pet.resv.directlistBygender", map);
	}

	@Override
	public SitterDTO readSitter(String sitter_id) {
		return sqlsession.selectOne("mutli.com.pet.resv.readsitter", sitter_id);
	}

}
