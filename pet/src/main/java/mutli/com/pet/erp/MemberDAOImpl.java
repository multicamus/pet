package mutli.com.pet.erp;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
		return sqlSession.selectOne("mutli.com.pet.erp.login", loginUserInfo); 
	}

}
