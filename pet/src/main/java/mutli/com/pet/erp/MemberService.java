package mutli.com.pet.erp;

import java.util.List;

import mutli.com.pet.mypet.PetDTO;

public interface MemberService {
	// 로그인
	MemberDTO login(MemberDTO loginUser);
	List<PetDTO> petList(MemberDTO loginUser);
	
	// 로그인
	SitterDTO login(SitterDTO loginUser);
	
	// 업데이트
	int update(SitterDTO sitter);
	int update(MemberDTO member);
	
	// 등록
	int insert(SitterDTO sitter);
	int insert(MemberDTO member);
	
	// 삭제
	int delete(SitterDTO sitter);
	int delete(MemberDTO member);
	
}
