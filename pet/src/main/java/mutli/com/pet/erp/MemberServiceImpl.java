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
<<<<<<< HEAD
	public List<PetDTO> pet(MemberDTO loginUser) {
		List<PetDTO> mypetlist = dao.pet(loginUser);
		return mypetlist;
=======
	public List<PetDTO> petList(MemberDTO loginUser) {
		return dao.petList(loginUser);
>>>>>>> refs/remotes/origin/main-old
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

}
