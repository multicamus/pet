package multi.com.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//BoardDAO의 메소드를 호출
//=> 컨틀로러에게 받은 데이터를 가공해서 DAO로 넘기거나 DAO에서 받은 데이터를 가공해서 컨트롤러로 넘기는 작업
//=> 트랜잭션처리
@Service
public class reviewServiceImpl implements reviewService{
	reviewDAO dao;
	public reviewServiceImpl() {
		
	}
	
	@Autowired
	public reviewServiceImpl(reviewDAO dao) {
		super();
		this.dao = dao;
	}
	
	@Override
	public int insert(reviewDTO review) {	
		System.out.println(review);
		dao.insert(review);
		return 0;
	}
	
	
}















