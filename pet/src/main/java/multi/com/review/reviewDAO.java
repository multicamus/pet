package multi.com.review;
import java.util.List;

import org.springframework.stereotype.Repository;
//mybatis의 SqlSession을 이용해서 작업
public interface reviewDAO {
	//후기등록 - db에 처리
	int insert(reviewDTO review);
	
}




