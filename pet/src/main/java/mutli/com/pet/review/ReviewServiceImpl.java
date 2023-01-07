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
	public List<ReviewDTO> read() {
		return dao.read();
	}
	
	
	
	
}
