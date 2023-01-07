package mutli.com.pet.review;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

@Controller
public class ReviewController {
	FileUploadLogic fileuploadService;
	ReviewService service;
	
	
	@Autowired
	public ReviewController(FileUploadLogic fileuploadService,ReviewService service) {
		super();
		this.fileuploadService = fileuploadService;
		this.service = service;
	}
	
	

	//텍스트용
	@RequestMapping(value = "/review/insert.do", method = RequestMethod.GET)
	public String insert(ReviewDTO review) {
		System.out.println("ReviewDTO : "+review);
		service.insert(review);
		return "review";
	}
	
	@RequestMapping("/menu/review.do")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView("review");
		List<ReviewDTO> readlist = service.read();
		mav.addObject("review",readlist);
		System.out.println(readlist);
		return mav;
	}
	
	//텍스트 + 파일용
	@RequestMapping(value = "/",method = RequestMethod.POST)
	public String write(ReviewDTO review,HttpSession session) throws IllegalStateException, IOException {
		System.out.println("test-------");
	//	System.out.println("board=>"+board);
		//1. MultipartFile정보를 추출하기
		List<MultipartFile> files = review.getReview_file();
		
		
		//2. 업로드될 서버의 경로 - 실제 서버의 경로를 추출하기 위해서 context의 정보를 담고 있는 ServletContext객체를 추출
		//=>ServletContext는 우리가 생성한 프로젝트가 서버에 배포되는 실제 경로와  context에 대한 정보를 담고 있는 객체
		String path =
				WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/upload");
		//System.out.println(path);
		
		
		//3. 파일업로드 서비스를 호출해서 실제 서버에 업로드되도록 작업하기
		List<ReviewFileDTO> reviewfiledtolist =  fileuploadService.uploadFiles(files, path);
		int count = 1;
		//업로드된 파일의 boardfileno의 값을 셋팅 - 1부터 1,2,3,4....첨부파일마지막번호
		for(ReviewFileDTO reviewfiledto:reviewfiledtolist) {
			reviewfiledto.setReviewFileno(count+"");
			count++;
		}
	//	System.out.println(boardfiledtolist);
		//4. 게시글에 대한 일반적인 정보와 첨부되는 파일의 정보를 db에 저장하기
		service.insert(review,reviewfiledtolist);
		return "review";
		
		
//		if reviewfilelist == null{
//			service.insert(review,reviewfiledtolist);
//			return "redirect:/";
//		}else {
//			writePage(review);
//		}
	}
}
