package mutli.com.pet.review;

import java.util.List;

public interface ReviewService {
	// insert
	int insert(ReviewDTO review);
	int insert(ReviewDTO review, List<ReviewFileDTO> reviewfiledtolist);
	
	List<Review2DTO> read();
	
	
}