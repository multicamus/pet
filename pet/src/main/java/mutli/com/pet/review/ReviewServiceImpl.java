package mutli.com.pet.review;

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
		return dao.insert(review);
	}

}
