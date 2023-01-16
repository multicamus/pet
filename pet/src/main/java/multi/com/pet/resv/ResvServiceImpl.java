package multi.com.pet.resv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mutli.com.pet.erp.LoginUserDTO;
import mutli.com.pet.erp.SitterDTO;

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
	@Override
	public ResvDTO resvread(String resv_no) {
		return dao.resvread(resv_no);
	}
	@Override
	public int changeStatus() {
		return dao.changeStatus();
	}
	
	//예약취소
	@Override
	public int cancelResv(String resv_no, LoginUserDTO user) {
		if(user.getUser_type().equals("M")) {
			return dao.mbcancelResv(resv_no);
		}else {
			return dao.stcancelResv(resv_no);
		}
	}
	@Override
	public int approve(String resv_no) {
		return dao.approve(resv_no);
	}
	
	
}
