package mutli.com.pet.review;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Repository
public class ReviewDAOImpl implements ReviewDAO {
	SqlSession sqlSession;
	
	@Autowired
	public ReviewDAOImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	@Override
	public int insert(ReviewDTO review) {
		return sqlSession.insert("mutli.com.pet.review.insert", review);
	}

}
