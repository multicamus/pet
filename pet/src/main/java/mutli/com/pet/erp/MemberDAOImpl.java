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
		return sqlSession.selectList("mutli.com.pet.mypet.mypet1", loginUserInfo);
	}
	
	@Override
	public List<PetDTO> petList(String member_id) {
		return sqlSession.selectList("mutli.com.pet.mypet.mypet2", member_id);
	}
	
	// login - sitter
	@Override
	public SitterDTO login(SitterDTO loginUserInfo) {
		return sqlSession.selectOne("mutli.com.pet.erp.sitter_login", loginUserInfo);
	}
	
	// read - member
	@Override
	public MemberDTO member_read(String member_id) {
		return sqlSession.selectOne("mutli.com.pet.erp.member_read", member_id);
	}

	// read - sitter
	@Override
	public SitterDTO sitter_read(String sitter_id) {
		return sqlSession.selectOne("mutli.com.pet.erp.sitter_read", sitter_id);
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
		return sqlSession.update("mutli.com.pet.erp.sitter_insert", sitter);
	}

	@Override
	public int insert(MemberDTO member) {
		return sqlSession.update("mutli.com.pet.erp.member_insert", member);
	}

	// delete
	@Override
	public int delete(SitterDTO sitter) {
		return sqlSession.update("mutli.com.pet.erp.sitter_delete", sitter);
	}
				
	@Override
	public int delete(MemberDTO member) {
		return sqlSession.update("mutli.com.pet.erp.member_delete", member);
	}

	@Override
	public List<SitterDTO> sitterList() {
		List<SitterDTO> sitterlist = sqlSession.selectList("mutli.com.pet.erp.sitterList");
		System.out.println(sitterlist);
		return sitterlist;
	}
	
	

	
}
