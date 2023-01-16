package multi.com.pet.resv;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mutli.com.pet.erp.SitterDTO;

@Repository
public  class ResvDAOImpl implements ResvDAO {
	
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

	@Override
	public int insert(ResvDTO resvdto) {
		System.out.println("insertdaoimpl");
		return sqlsession.insert("mutli.com.pet.resv.insert", resvdto);
	}


	@Override
	public List<ResvDTO> memberresvlist(String member_id) {
		System.out.println("daoimpl:"+member_id);

		return sqlsession.selectList("mutli.com.pet.resv.mbresvlist", member_id);

	}
	
	@Override
	public List<ResvDTO> sitterresvlist(String sitter_id) {
		return sqlsession.selectList("mutli.com.pet.resv.stresvlist", sitter_id);
	}
	
	@Override
	public ResvDTO resvread(String resv_no) {
		return sqlsession.selectOne("mutli.com.pet.resv.resvread", resv_no);
	}

	@Override
	public int changeStatus() {
		return sqlsession.update("mutli.com.pet.resv.changestatus");
	}
	
	//이용자가 결제취소해서 예약취소(resv_status -> 3으로 바뀜)
	@Override
	public int mbcancelResv(String resv_no) {
		return sqlsession.update("mutli.com.pet.resv.mbcancelresv", resv_no);
	}
	
	//펫시터가 승인거절해서 예약취소(resv_status -> 4으로 바뀜)
	@Override
	public int stcancelResv(String resv_no) {
		return sqlsession.update("mutli.com.pet.resv.stcancelresv", resv_no);
	}
	
	//펫시터가 승인을 수락함(resv_status -> 1로 바뀜)
	@Override
	public int approve(String resv_no) {
		return sqlsession.update("mutli.com.pet.resv.approve", resv_no);
	}



	
	
	
}
