package multi.com.pet.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import multi.com.pet.mypage.MypageDAO;
import multi.com.pet.mypage.MypageDTO;

@Service
public class MypageServiceimpl implements MypageService {
	MypageDAO dao;
	
	public MypageServiceimpl() {
		
	}
	@Autowired
	public MypageServiceimpl(MypageDAO dao) {
		super();
		this.dao = dao;
	}
	
	
	@Override
	public List<MypageDTO> sitterList() {
		return dao.sitterList();
	}
	@Override
	public MypageDTO getSitter_info(String sitter_id) {
		return dao.read(sitter_id);
	}
	@Override
	public int update(MypageDTO Mypage) {
		return dao.update(Mypage);
	}
	@Override
	public int delete(String Mypage_no) {
		return dao.delete(Mypage_no);
	}
	@Override
	public List<MypageDTO> search(String data) {
		return dao.search(data);
	}
	@Override
	public List<MypageDTO> search(String tag, String data) {
		return dao.search(tag, data);
	}
	@Override
	public List<MypageDTO> findByCategory(String category) {
		
		//그냥 메소드 수행시간 측정하기 
		 List<MypageDTO> list = null;
		 if(category!=null) {
			 if(category.equals("all")) {
				 list = dao.sitterList();
			 }else {
				 list = dao.findByCategory(category);
			 }
		 }
		return list;
	}
	@Override
	public int insert(MypageDTO sitter_id) {
		// TODO Auto-generated method stub
		return 0;
	}
}
