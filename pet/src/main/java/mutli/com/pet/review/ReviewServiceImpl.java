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
	
	
	@Override
	public int insert(ReviewDTO review) {
		System.out.println(review);
		return dao.insert(review);
	}
	
	
	@Override
	public int insert(ReviewDTO review, List<ReviewFileDTO> reviewfiledtolist) {
		dao.insert(review);
		dao.insertFile(reviewfiledtolist);
		return 0;
	}


	@Override
	public List<Review2DTO> read() {
		return dao.read();
	}


	@Override
	public int update(Review2DTO review) {
		return dao.update(review);	
		}


	@Override
	public int delete(String review_no) {
		return dao.delete(review_no);
	}


	@Override
	public Review2DTO read_update(String review_no) {
		System.out.println("=======서비스======");
		return dao.read_update(review_no);
	}


	@Override
	public Review2DTO read_detail(String review_no) {
		return dao.read_detail(review_no);
	}

	@Override
	public List<Review2DTO> read_detail_ajax(String review_no) {
		List<Review2DTO> ajax = dao.read_detail_ajax(review_no);
		return ajax;
	}
	
 
}
