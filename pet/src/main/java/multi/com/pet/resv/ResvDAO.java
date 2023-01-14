package multi.com.pet.resv;

import java.util.List;

import mutli.com.pet.erp.SitterDTO;

public interface ResvDAO {
	List<SitterDTO> directlistAllgender(String size, String code, String shortAddr);
	List<SitterDTO> directlistBygender(String gender, String size, String code, String shortAddr);
	SitterDTO readSitter(String sitter_id);
	int insert(ResvDTO resvdto);
	List<ResvDTO> memberresvlist(String member_id);
	ResvDTO resvread(String resv_no);
	List<ResvDTO> sitterresvlist(String sitter_id);
	//예약상태갱신
	int changeStatus();
	//예약취소
	int mbcancelResv(String resv_no);
	int stcancelResv(String resv_no);

}
