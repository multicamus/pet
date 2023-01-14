package mutli.com.pet.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReviewController {
	ReviewService service;
	
	@Autowired
	public ReviewController(ReviewService service) {
		super();
		this.service = service;
	}
	
	@RequestMapping(value = "/menu/review.do", method = RequestMethod.GET)
	public String reviewList(Model model) {
		List<ReviewDTO> review = service.reviewList();
		model.addAttribute("reviewList", review);
		System.out.println(review);
		return "review";
	}
	
	@RequestMapping(value = "/reivew/insert.do", method = RequestMethod.GET)
	public String insert(ReviewDTO review) {
		System.out.println(review);
		service.insert(review);
		return "review";
	}
	
	@RequestMapping(value = "/review/read.do", method = RequestMethod.GET)
	public String read(String review_no, String state, Model model) {
		ReviewDTO review = service.read(review_no);
		model.addAttribute("review", review);
		
		String view = "";
		switch (state) {
		case "READ":
			view = "review/read";
			break;
		default:
			view = "review/update";
			break;
		}
		return view;
	}
	
	@RequestMapping(value = "/review/update.do")
	public String update(ReviewDTO review) {
		System.out.println(review);
		service.update(review);
		return "redirect:/review/read.do?review_no=" + review.getReview_no() + "&state=READ";
	}
	
	@RequestMapping(value = "/review/delete.do")
	public String delete(String review_no) {
		service.delete(review_no);
		return "redirect:/menu/review.do";
	}
	

}
