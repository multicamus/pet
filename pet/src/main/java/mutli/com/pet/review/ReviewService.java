package mutli.com.pet.review;

import java.util.List;

public interface ReviewService {
	// insert
	int insert(ReviewDTO review);
	int insert(ReviewDTO review, List<ReviewFileDTO> reviewfiledtolist);
	
	
	Review2DTO read_detail(String review_no);
	Review2DTO read_update(String review_no);

	/* Review2DTO read_update_after(Review2DTO review); */
	List<Review2DTO> read();
	int update(Review2DTO review);
	int delete(String review_no);
}