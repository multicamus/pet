package multi.com.review;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class reviewDAOImpl implements reviewDAO{
	//Mybatis의 핵심클래스를 이용해서 sql문을 실행
	SqlSession sqlSession;
	public reviewDAOImpl() {
		
	}
	
	@Autowired
	public reviewDAOImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	@Override
	public int insert(reviewDTO review) {
		System.out.println(review);
		/* mybatis xml에 연결된 곳에 삽입 */
		return sqlSession.insert("multi.com.review.review_id", review);
	}
}















