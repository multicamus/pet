package mutli.com.pet.erp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mutli.com.pet.mypet.PetDTO;

@Service
public class MemberServiceImpl implements MemberService {
	MemberDAO dao;
	
	@Autowired
	public MemberServiceImpl(MemberDAO dao) {
		super();
		this.dao = dao;
	}
	
	// login - member
	@Override
	public MemberDTO login(MemberDTO loginUserInfo) {
		MemberDTO user = dao.login(loginUserInfo);
		return user;
	}

	// login - sitter
	@Override
	public SitterDTO login(SitterDTO loginUserInfo) {
		SitterDTO user = dao.login(loginUserInfo);
		return user;
	}

	// login - pet
	@Override
	public List<PetDTO> petList(MemberDTO loginUser) {
		return dao.petList(loginUser);

	}
	
	@Override
	public List<PetDTO> petList(String member_id) {
		return dao.petList(member_id);
	}
	
	// read - sitter
	@Override
	public SitterDTO sitter_read(String sitter_id) {
		return dao.sitter_read(sitter_id);
	}
	
	// read - member
	@Override
	public MemberDTO member_read(String member_id) {
		return dao.member_read(member_id);
	}
	
	// update
	@Override
	public int update(SitterDTO sitter) {
		return dao.update(sitter);
	}

	@Override
	public int update(MemberDTO member) {
		return dao.update(member);
	}
	
	// insert
	@Override
	public int insert(SitterDTO sitter) {
		return dao.insert(sitter);
	}

	@Override
	public int insert(MemberDTO member) {
		return dao.insert(member);
	}

	// delete
	@Override
	public int delete(SitterDTO sitter) {
		return dao.delete(sitter);
	}

	@Override
	public int delete(MemberDTO member) {
		return dao.delete(member);
	}

	@Override
	public List<SitterDTO> sitterList() {
		return dao.sitterList();
	}
	

}
