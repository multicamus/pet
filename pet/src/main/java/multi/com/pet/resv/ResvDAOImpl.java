package multi.com.pet.resv;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mutli.com.pet.erp.SitterDTO;
import mutli.com.pet.review.Review2DTO;

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
	
	//과거에 이용했던 펫시터 불러오기
	@Override
	public List<SitterDTO> pastlist(String code, String member_id, String shortAddr) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("code", code);
		map.put("member_id", member_id);
		map.put("shortAddr", shortAddr);
		return sqlsession.selectList("mutli.com.pet.resv.pastlist", map);
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
	
	//예약리스트를 매개변수로 받아서 각각의 예약내역의 이용후기 여부를 확인
	@Override
	public List<String> checkReview(List<ResvDTO> resvdto) {
		return sqlsession.selectList("mutli.com.pet.resv.checkreview", resvdto);
	}
	
	//예약번호로 리뷰상세페이지 불렁기
	@Override
	public Review2DTO readReview(String resv_no) {
		return sqlsession.selectOne("mutli.com.pet.resv.readreview", resv_no);
	}
	
	//돌봄완료된 시터의 해당 경력 1씩 증가시키고 해당 예약내역의 resv_status를 5로 바꾸기
	@Override
	public int updateFinish() {
		int a = sqlsession.update("mutli.com.pet.resv.updateSmallCareer");
		int b = sqlsession.update("mutli.com.pet.resv.updateMediumCareer");
		int c = sqlsession.update("mutli.com.pet.resv.updateLargeCareer");
		int d = sqlsession.update("mutli.com.pet.resv.updateCatCareer");
		int e = sqlsession.update("mutli.com.pet.resv.updateStatus");

		return a+b+c+d+e;
	}


	



	
	
	
}
