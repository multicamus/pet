package mutli.com.pet.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewServiceImpl implements ReviewService {
	ReviewDAO dao;
	
	@Autowired
	public ReviewServiceImpl(ReviewDAO dao) {
		super();
		this.dao = dao;
	}
	
	// list
	@Override
	public List<ReviewDTO> reviewList() {
		return dao.reviewList();
	}

	// insert
	@Override
	public int insert(ReviewDTO review) {
		return dao.insert(review);
	}
	
	// read
	@Override
	public ReviewDTO read(String review_no) {
		return dao.read(review_no);
	}

	// update
	@Override
	public int update(ReviewDTO review) {
		return dao.update(review);
	}

	// delete
	@Override
	public int delete(String review_no) {
		return dao.delete(review_no);
	}
	
	

}
