package mutli.com.pet.review;

import java.util.List;

public interface ReviewDAO {
	// insert
	int insert(ReviewDTO review);
	int insertFile(List<ReviewFileDTO> reviewfiledtolist);
	
	
	List<Review2DTO> read();
}
