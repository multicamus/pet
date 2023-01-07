package mutli.com.pet.review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
		System.out.println(review);
		return sqlSession.insert("mutli.com.pet.review.insert", review);
	}

	@Override
	public int insertFile(List<ReviewFileDTO> reviewfiledtolist) {
		//return sqlSession.insert("mutli.com.pet.review.fileinsert", reviewfiledtolist);
		return 0;
	}


	@Override
	public List<ReviewDTO> read() {
		List<ReviewDTO> list = sqlSession.selectList("mutli.com.pet.review.read");
		return list;
	}

	

}
