package mutli.com.pet.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/review")
public class ReviewController {
	ReviewService service;
	
	@Autowired
	public ReviewController(ReviewService service) {
		super();
		this.service = service;
	}
	
	@RequestMapping(value = "/insert.do", method = RequestMethod.GET)
	public String insert(ReviewDTO review) {
		System.out.println(review);
		int result = service.insert(review);
		return "review";
		
	}
	

}
