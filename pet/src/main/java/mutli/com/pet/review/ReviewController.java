package mutli.com.pet.review;


import java.util.List;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

@Controller
public class ReviewController {
	FileUploadLogic2 fileuploadService;
	ReviewService service;
	
	
	@Autowired
	public ReviewController(FileUploadLogic2 fileuploadService,ReviewService service) {
		super();
		this.fileuploadService = fileuploadService;
		this.service = service;
	}
	
	
	//이용후기등록  
	@RequestMapping(value = "/review/insert.do", method = RequestMethod.POST)
	public String insert(ReviewDTO review) {
	//	System.out.println("ReviewDTO : "+review);
		service.insert(review);
		return "redirect:/menu/review.do";
	}
	
	//게시판 뷰
	@RequestMapping(value= "/menu/review.do", method = RequestMethod.GET)
	public ModelAndView read() {
		ModelAndView mav = new ModelAndView("review");
		List<Review2DTO> readlist = service.read();
		mav.addObject("review",readlist);
	//	System.out.println(readlist);
		return mav;
	}
	
	
	//앞으로 뒤로 버튼을 누를 때 마다 db연동해서 번호리스트를 배열로 갖고 있기
	//앞으로 버튼을 누르면 하나씩 앞에 있는 것을 보여주다가 맨 앞인 경우에는 1을 셋팅하거나 alert띄우기
	//뒤로 버튼을 누르면 하나씩 뒤에 있는 것을 보여주다가 맨 뒤의 게시글인 경우에는 마지막 게시글번호를 셋팅한 후 alert띄우기
	//Ajax로 구현하기
	//1. 컨트롤러에 ajax로 요청을 받을 수 있도록 메소드를 만들기
	//     erp프로젝트의 jsp는 etcview의 jsp파일, 컨트롤러는 com.multi.erp.etc패키지에 AjaxTestController분석
	//     BoardController와 boardlist_jstl.jsp를 분석 
	//   서비스, dao, mappper도 정의하기
	//   1) 뒤로 버튼을 눌렀을때 ajax로 컨트롤러를 요청하면서 review_no받아오기 부터 처리 컨트롤러에 메소드를 추가하고 데이터가 넘어오는 지 출력
	//2. 조회할 데이터
	//   => 전체 목록을 게시글번호로 정렬해서 받아오거나 
	 
	@RequestMapping(value ="/menu/review/ajax_detail.do" ,produces = "application/json;charset=utf-8")
	@ResponseBody
	public String ajax(String review_no) {
		System.out.println("*******"+review_no);
		service.read_detail_ajax(review_no);
	
//		List<Review2DTO> ajax = null;
//		System.out.println("service 테스트" + ajax);
//		System.out.println("ajax 테스트" + ajax);
		return "ajax";
	} 
	
	
	
	
	//게시판 상세보기
	@RequestMapping(value= "/menu/review/detail.do", method = RequestMethod.GET)
	public ModelAndView read_detail(String review_no) {
		System.out.println("ReviewController read_detail");
		ModelAndView mav = new ModelAndView("review/read");
		Review2DTO readlist = service.read_detail(review_no);
		mav.addObject("review",readlist);
		System.out.println(readlist);
		return mav;
	}
	
	//1. 선택한 글을 수정할 수 있는 화면을 response할 수 있도록
	// => 수정버튼을 누르면 실행되는 path로 메소드를 만들
	// => 선택한 글을 DB에서 읽어오기
	// => 서비스와 dao에 메소드가 추가(mapper추가)
	// => 원하는 글만 읽어와야 하므로 review_no를 파라미터로 받아서 처리 
	// => update페이지로 response
	// => update페이지에서 조회결과를 수정할 수 있도록 출력
	
	// 실제 수정컨트롤러
	@RequestMapping(value = "/review/update.do",method = RequestMethod.POST)
	public String update(Review2DTO review) {
		System.out.println("ReviewController update");
		int result = service.update(review);
		return "redirect:/menu/review/detail.do?review_no="+review.getReview_no();
	}
	
	
	
	//게시판 수정 뷰
	@RequestMapping(value ="/review/update_read.do",method = RequestMethod.GET )
	public ModelAndView read_update(String review_no) {
		ModelAndView mav = new ModelAndView("review/update");
		Review2DTO readlist = service.read_update(review_no);
		mav.addObject("review",readlist);
		System.out.println("컨트롤러~~~~~ " + readlist);
		return mav;
	}
	
	
	//수정 삭제
	@RequestMapping("/review/delete.do")
	public String delete(String review_no) {
		int result = service.delete(review_no);
		return "redirect:/menu/review.do";
	}
	
	
	
	
	//텍스트 + 파일 insert
	@RequestMapping(value = "/review/fileinsert.do",method = RequestMethod.POST)
	public String write(ReviewDTO review,HttpSession session) throws IllegalStateException, IOException {
		System.out.println("test-------");
		List<MultipartFile> files = review.getReview_file();
		String path =
				WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/upload");
		List<ReviewFileDTO> reviewfiledtolist =  fileuploadService.uploadFiles(files, path);
		int count = 1;
		for(ReviewFileDTO reviewfiledto:reviewfiledtolist) {
			reviewfiledto.setReviewFileno(count+"");
			count++;
		}
		service.insert(review,reviewfiledtolist);
		return "redirect:/menu/review.do";
//		if reviewfilelist == null{
//			service.insert(review,reviewfiledtolist);
//			return "redirect:/";
//		}else {
//			writePage(review);
//		}
	}
}
