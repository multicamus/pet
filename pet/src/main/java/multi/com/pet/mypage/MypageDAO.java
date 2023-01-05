package multi.com.pet.mypage;

import java.util.List;



public interface MypageDAO {
	//시터등록 - db에 처리
	int insert(MypageDTO sitter);
	//시터목록보기 - db에 처리
	List<MypageDTO> sitterList();
	//시터상세조회 - db에 처리
	MypageDTO read(String sitter_id);
	//시터수정 - db에 처리
	int update(MypageDTO sitter);
	//시터삭제 - db에 처리
	int delete(String sitter_id);
	//
	List<MypageDTO> search(String data);
	//
	List<MypageDTO> search(String tag,String data);
	List<MypageDTO> findByCategory(String category);
}
