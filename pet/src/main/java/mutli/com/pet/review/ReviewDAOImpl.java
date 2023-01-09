package mutli.com.pet.review;

import java.util.List;

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

	// insert
	@Override
	public int insert(ReviewDTO review) {
		return sqlSession.insert("mutli.com.pet.review.insert", review);
	}

	// list
	@Override
	public List<ReviewDTO> reviewList() {
		return sqlSession.selectList("mutli.com.pet.review.reviewList");
	}

	// read
	@Override
	public ReviewDTO read(String review_no) {
		return sqlSession.selectOne("mutli.com.pet.review.read", review_no);
	}

	// update
	@Override
	public int update(ReviewDTO review) {
		return sqlSession.update("mutli.com.pet.review.update", review);
	}

	// delete
	@Override
	public int delete(String review_no) {
		return sqlSession.delete("mutli.com.pet.review.delete", review_no);
	}
	
	
	
	

}
