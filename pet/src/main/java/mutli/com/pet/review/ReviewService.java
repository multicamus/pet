package mutli.com.pet.review;

import java.util.List;

public interface ReviewService {

	int insert(ReviewDTO review);
	int insert(ReviewDTO review, List<ReviewFileDTO> reviewfiledtolist);
	
	
	Review2DTO read_detail(String review_no);
	Review2DTO read_update(String review_no);
	List<Review2DTO> read();


	int update(Review2DTO review);
	int delete(String review_no);
	
	Review2DTO read_detail_ajax(String review_no);
	Review2DTO read_detail_ajax_next(String review_no);
}