package multi.com.pet.resv;

import java.util.List;

import mutli.com.pet.erp.SitterDTO;
import mutli.com.pet.review.ReviewDTO;

public interface ResvDAO {
	List<SitterDTO> directlistAllgender(String size, String code, String shortAddr);
	List<SitterDTO> directlistBygender(String gender, String size, String code, String shortAddr);
	//과거 이용했던 펫시터 불러오기
	List<SitterDTO> pastlist(String code, String member_id, String shortAddr);
	
	SitterDTO readSitter(String sitter_id);
	int insert(ResvDTO resvdto);
	List<ResvDTO> memberresvlist(String member_id);
	// 예약번호로 예약 데이터 가져오기
	ResvDTO resvread(String resv_no);
	List<ResvDTO> sitterresvlist(String sitter_id);
	//예약상태갱신
	int changeStatus();
	//예약취소
	int mbcancelResv(String resv_no);
	int stcancelResv(String resv_no);	
	//예약매칭승인(by 시터)
	int approve(String resv_no);
	//예약리스트를 매개변수로 받아서 각각의 예약내역의 이용후기 여부를 확인
	public List<String> checkReview(List<ResvDTO> resvdto);
	//예약번호로 리뷰상세페이지불러오기
	//돌봄완료된 시터의 해당 경력 1씩 증가시키고 해당 예약내역의 resv_status를 5로 바꾸기
	public int updateFinish(); 
	public ReviewDTO readReview(String resv_no);
	//top에 추가할 new 의 근거
	public List<ReviewDTO> readStatus(String sitter_id);

}
