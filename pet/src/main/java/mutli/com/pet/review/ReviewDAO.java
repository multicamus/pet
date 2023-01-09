package mutli.com.pet.review;

import java.util.List;

public interface ReviewDAO {
	// list
	List<ReviewDTO> reviewList();
	
	// insert
	int insert(ReviewDTO review);

	// read
	ReviewDTO read(String review_no);
	
	// update
	int update(ReviewDTO review);
	
	// delete
	int delete(String review_no);
}
