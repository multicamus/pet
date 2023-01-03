package mutli.com.pet.erp;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDaoImpl implements MemberDao {
	SqlSession sqlSession;
	
	public MemberDaoImpl() {
		super();
	}

	@Autowired
	public MemberDaoImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	// login
	@Override
	public MemberDTO login(MemberDTO loginUser) {
		return sqlSession.selectOne("com.multi.erp.member.login", loginUser);
	}

}
