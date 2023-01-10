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
	public List<PetDTO> pet(MemberDTO loginUser) {
		List<PetDTO> mypetlist = dao.pet(loginUser);
		return mypetlist;
	}
	
	
	
	

}
