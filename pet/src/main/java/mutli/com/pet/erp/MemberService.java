package mutli.com.pet.erp;

import java.util.List;

import mutli.com.pet.mypet.PetDTO;

public interface MemberService {
	// 로그인
	MemberDTO login(MemberDTO loginUser);
	List<PetDTO> pet(MemberDTO loginUser);
	
	SitterDTO login(SitterDTO loginUser);
	

}
