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

	// login - member
	@Override
	public MemberDTO login(MemberDTO loginUserInfo) {
		return sqlSession.selectOne("mutli.com.pet.erp.user_login", loginUserInfo); 
	}

	// login - pet
	@Override
	public List<PetDTO> petList(MemberDTO loginUserInfo) {
		return sqlSession.selectList("mutli.com.pet.mypet.mypet", loginUserInfo);
	}
	
	// login - sitter
	@Override
	public SitterDTO login(SitterDTO loginUserInfo) {
		return sqlSession.selectOne("mutli.com.pet.erp.sitter_login", loginUserInfo);
	}
	
	// update
	@Override
	public int update(SitterDTO sitter) {
		return sqlSession.update("mutli.com.pet.erp.sitter_update", sitter);
	}


	public int update(MemberDTO member) {
		return sqlSession.update("mutli.com.pet.erp.member_update", member);

	}
	
	// insert
	@Override
	public int insert(SitterDTO sitter) {
		// TODO Auto-generated method stub
		return sqlSession.update("mutli.com.pet.erp.sitter_insert", sitter);
	}

	@Override
	public int insert(MemberDTO member) {
		// TODO Auto-generated method stub
		return sqlSession.update("mutli.com.pet.erp.insert_member", member);
	}

	// delete
	@Override
	public int delete(SitterDTO sitter) {
		// TODO Auto-generated method stub
		return sqlSession.update("mutli.com.pet.erp.sitter_delete", sitter);
	}
				
	@Override
	public int delete(MemberDTO member) {
		// TODO Auto-generated method stub
		return sqlSession.update("mutli.com.pet.erp.member_delete", member);
	}
	
	

	
}
