package mutli.com.pet.erp;

import mutli.com.pet.mypet.PetDTO;

public interface MemberService {
	// 로그인
	MemberDTO login(MemberDTO loginUser);
	PetDTO pet(MemberDTO loginUser);
	
	SitterDTO login(SitterDTO loginUser);
	

}
