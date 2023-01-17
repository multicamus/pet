package multi.com.pet.resv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mutli.com.pet.erp.LoginUserDTO;
import mutli.com.pet.erp.SitterDTO;
import mutli.com.pet.review.Review2DTO;

@Service
public class ResvServiceImpl implements ResvService {
	ResvDAO dao;
	
	@Autowired
	public ResvServiceImpl(ResvDAO dao) {
		super();
		this.dao = dao;
	}
	
	@Override
	public List<SitterDTO> directlist(String gender, String size, String code, String shortAddr) {
		if(gender.equals("A")) {
			return dao.directlistAllgender(size, code, shortAddr);
		}else {
			System.out.println("서비스단code"+code);
			return dao.directlistBygender(gender, size, code, shortAddr);
		}
		
	}
	@Override
	public SitterDTO readSitter(String sitter_id) {
		return dao.readSitter(sitter_id);
		
	}
	@Override
	public int insert(ResvDTO resvdto) {
		System.out.println("insert서비스");
		return dao.insert(resvdto);
	}
	
	@Override
	public List<ResvDTO> resvlist(LoginUserDTO user) {
		if(user!=null) {
			if(user.getUser_type().equals("M")) {
				System.out.println("service1");
				System.out.println("service:"+user.getMember_id());
				return dao.memberresvlist(user.getMember_id());
			}else {
				System.out.println("service2");
				System.out.println(user.getUser_type().getClass()); 
				System.out.println("service"+user.getUser_type());
				System.out.println("service:"+user.getSitter_id());
				return dao.sitterresvlist(user.getSitter_id());
			}	
		}else {
			System.out.println("ddddddddddddddddd");
			return null;
		}
	}
	//예약번호로 예약정보 read
	@Override
	public ResvDTO resvread(String resv_no) {
		return dao.resvread(resv_no);
	}
	//예약상태 갱신
	@Override
	public int changeStatus() {
		return dao.changeStatus();
	}
	
	//예약취소 by 이용자 or 시터
	@Override
	public int cancelResv(String resv_no, LoginUserDTO user) {
		if(user.getUser_type().equals("M")) {
			return dao.mbcancelResv(resv_no);
		}else {
			return dao.stcancelResv(resv_no);
		}
	}
	//예약승인 by 시터
	@Override
	public int approve(String resv_no) {
		return dao.approve(resv_no);
	}
	//예약리스트를 매개변수로 받아서 각각의 예약내역의 이용후기 여부를 확인
	@Override
	public List<String> checkReview(List<ResvDTO> resvdto) {
		return dao.checkReview(resvdto);
	}
	//예약번호로 리뷰상세페이지 불러오기
	@Override
	public Review2DTO readReview(String resv_no) {	
		return dao.readReview(resv_no);
	}
	

}
