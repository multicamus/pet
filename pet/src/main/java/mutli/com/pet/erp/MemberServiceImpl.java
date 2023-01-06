package mutli.com.pet.erp;

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

	@Override
	public MemberDTO login(MemberDTO loginUserInfo) {
		MemberDTO user = dao.login(loginUserInfo);
		return user;
	}
	
	@Override
	public SitterDTO login(SitterDTO loginUserInfo) {
		SitterDTO user = dao.login(loginUserInfo);
		return user;
	}

	@Override
	public PetDTO pet(MemberDTO loginUser) {
		PetDTO pet = dao.pet(loginUser);
		return pet;
	}
	
	
	
	

}
