package mutli.com.pet;

import java.util.List;



import mutli.com.pet.erp.SitterDTO;
import mutli.com.pet.erp.SitterImgDTO;



public interface AdminService {



	SitterDTO read(String sitter_id);
	List<SitterDTO> search(String category,String search_val);
	int insert(SitterDTO sitter, List<SitterImgDTO> sitterfiledtolist);
	//목록보기
	List<SitterDTO> sitterList();
	//상세조회
	SitterDTO getsitterInfo(String sitter_id);
	//수정
	int update(String valid_data, String sitter_id);
	//삭제
	int delete(String sitter_id); 
	//제목으로 검색
	List<SitterDTO> search(String data);
	
	List<SitterDTO> titlesearch(String tag,String data);
	//제목,작성자, 본문, 작성일별로 검색
	List<SitterDTO> findByCategory(String category);
	
	// 상세보기한 경우 보여질 업로드한 파일의 목록 조회
	List<SitterImgDTO> getFileList(String sitter_id);
	SitterImgDTO getFile(SitterImgDTO sitterinputdata);
	List<SitterDTO> sitterlList();
	SitterDTO getSitterInfo(String sitter_id);

	
	
	

}