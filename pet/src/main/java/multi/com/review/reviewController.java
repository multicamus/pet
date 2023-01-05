package multi.com.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class reviewController {
	reviewService service;
	public reviewController() {}
	
	@Autowired
	public reviewController(reviewService service) {
		super();
		this.service = service;
	}
	
	@RequestMapping(value = "/review/write.do",method = RequestMethod.GET)
	public String writePage(reviewDTO review) {
		System.out.println(review);
		service.insert(review);

		return "review/review";
	}
	
	
}













