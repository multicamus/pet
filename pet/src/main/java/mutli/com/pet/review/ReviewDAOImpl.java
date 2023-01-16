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

	// insert
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
	public List<Review2DTO> read() {
		List<Review2DTO> list = sqlSession.selectList("mutli.com.pet.review.read");
		System.out.println("daoImpl " + list);
		return list;
	}

	@Override
	public int update(Review2DTO review) {
		System.out.println(review);
		return sqlSession.update("mutli.com.pet.review.update", review);
	}

	@Override
	public int delete(String review_no) {
		return sqlSession.delete("mutli.com.pet.review.delete",review_no);
	}

	@Override
	public Review2DTO read_update(String review_no) {
		return sqlSession.selectOne("mutli.com.pet.review.read_detail",review_no);
	}

	@Override
	public Review2DTO read_detail(String review_no) {
		return sqlSession.selectOne("mutli.com.pet.review.read_detail",review_no);
	}

	@Override
	public Review2DTO read_detail_ajax(String review_no) {
		return sqlSession.selectOne("mutli.com.pet.review.read_detail_ajax",review_no);
	}

	

}
