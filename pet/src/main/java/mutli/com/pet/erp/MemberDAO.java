package mutli.com.pet.erp;

import java.util.List;

import mutli.com.pet.mypet.PetDTO;

public interface MemberDAO {
	// 로그인
	MemberDTO login(MemberDTO loginUserInfo);
	List<PetDTO> pet(MemberDTO loginUserInfo);
	
	SitterDTO login(SitterDTO loginUserInfo);
	
}
