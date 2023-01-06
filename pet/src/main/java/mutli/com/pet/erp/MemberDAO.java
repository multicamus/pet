package mutli.com.pet.erp;

import mutli.com.pet.mypet.PetDTO;

public interface MemberDAO {
	// 로그인
	MemberDTO login(MemberDTO loginUserInfo);
	PetDTO pet(MemberDTO loginUserInfo);
	
	SitterDTO login(SitterDTO loginUserInfo);
	
}
