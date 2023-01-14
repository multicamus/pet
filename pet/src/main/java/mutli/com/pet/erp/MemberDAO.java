package mutli.com.pet.erp;

import java.util.List;

import mutli.com.pet.mypet.PetDTO;

public interface MemberDAO {
	// 로그인 (멤버)
	MemberDTO login(MemberDTO loginUserInfo);
	List<PetDTO> petList(MemberDTO loginUserInfo);
	List<PetDTO> petList(String member_id);

	
	// 로그인 (시터)
	SitterDTO login(SitterDTO loginUserInfo);
	
	// 읽기
	MemberDTO member_read(String member_id);
	SitterDTO sitter_read(String sitter_id);
	
	// 업데이트
	int update(SitterDTO sitter);
	int update(MemberDTO member);

	// 등록
	int insert(SitterDTO sitter);
	int insert(MemberDTO member);
	
	// 삭제
	int delete(SitterDTO sitter);
	int delete(MemberDTO member);
	
	// sitter list
	List<SitterDTO> sitterList();
	

}
