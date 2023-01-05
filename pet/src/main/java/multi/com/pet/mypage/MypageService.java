package multi.com.pet.mypage;

import java.util.List;

import multi.com.pet.mypage.MypageDTO;


public interface MypageService {
	//시터등록 
	int insert(MypageDTO sitter_id);
	//시터목록보기
	List<MypageDTO> sitterList();
	//시터상세조회
	MypageDTO getSitter_info(String sitter_id);
	//시터수정
	int update(MypageDTO sitter_id);
	//시터삭제
	int delete(String sitter_id);
	//시터 검색
	List<MypageDTO> search(String data);
	//제목,작성자, 본문, 작성일별로 검색
	List<MypageDTO> search(String tag,String data);
	List<MypageDTO> findByCategory(String category);

}
