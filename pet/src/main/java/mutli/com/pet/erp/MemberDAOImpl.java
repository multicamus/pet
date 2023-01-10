package mutli.com.pet.erp;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mutli.com.pet.mypet.PetDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	SqlSession sqlSession;
	
	@Autowired
	public MemberDAOImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	// login
	@Override
	public MemberDTO login(MemberDTO loginUserInfo) {
		return sqlSession.selectOne("mutli.com.pet.erp.user_login", loginUserInfo); 
	}

	@Override
	public SitterDTO login(SitterDTO loginUserInfo) {
		return sqlSession.selectOne("mutli.com.pet.erp.sitter_login", loginUserInfo);
	}

	@Override
	public List<PetDTO> pet(MemberDTO loginUserInfo) {
		return sqlSession.selectList("mutli.com.pet.mypet.mypet", loginUserInfo);
	}

	
}
