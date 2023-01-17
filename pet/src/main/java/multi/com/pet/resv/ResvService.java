package multi.com.pet.resv;

import java.util.List;

import org.springframework.stereotype.Service;

import mutli.com.pet.erp.LoginUserDTO;
import mutli.com.pet.erp.SitterDTO;
import mutli.com.pet.mypet.PetDTO;
import mutli.com.pet.review.Review2DTO;

public interface ResvService {
	List<SitterDTO> directlist(String gender, String size, String code, String shortAddr);
	SitterDTO readSitter(String sitter_id);
	int insert(ResvDTO resvdto);
	List<ResvDTO> resvlist(LoginUserDTO user);
	ResvDTO resvread(String resv_no);
	
	//예약상태 갱신
	int changeStatus();
	//예약취소
	int cancelResv(String resv_no, LoginUserDTO user);
	//예약신청 승인(시터가 이용자가 신청한 매칭을 승인해줌)
	int approve(String resv_no);
	//예약리스트를 매개변수로 받아서 각각의 예약내역의 이용후기 여부를 확인
	public List<String> checkReview(List<ResvDTO> resvdto);
	//예약번호로 리뷰상세페이지 열기
	public Review2DTO readReview(String resv_no);

	
}
