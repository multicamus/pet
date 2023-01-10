package multi.com.pet.mypage;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

import multi.com.pet.mypage.MypageDTO;
import multi.com.pet.mypage.MypageService;

@Controller
public class MypageController {
	MypageService service;
	public MypageController() {}

	@Autowired
	public MypageController(MypageService service) {
		super();
		this.service = service;

	}
	//어드민페이지 보기 - mypage는 ㅇ디비에서 가져오는 데이터를 출력해야 하므로 모두 컨트롤러에서 메소드로 정의하시고 작
	//1. admin마이페이지보기 처럼 모든 마이페이지 보기를 view-congfig.xml서 컨트롤러의 메소드로 바꿔서 요청하기
	//2. 각 mypage에 어떤 데이터를 출력할 것인지 조원들과 얘기를 나누기
	//3. 결정된 마이페이지에 출력될 내용들로 구성된 마이페이지를 다시 작업하기(디비연동안된 정적페이지-html태그로 작성하기)
	//4. 3번까지 정상적으로 요청되면 디비연동 시작
	@RequestMapping("/menu/mypage/admin.do")
	public String adminpage() {
		System.out.println("admin페이지 요청......");
		return "mypage/admin";
	}
	@RequestMapping("/menu/mypage/pet.do")
	public String petpage() {
		System.out.println("pet페이지 요청......");
		return "mypage/pet";
	}
	@RequestMapping("/menu/mypage/sitter.do")
	public String sitterpage() {
		System.out.println("sitter페이지 요청......");
		return "mypage/sitter";
	}
	@RequestMapping("/menu/mypage/user.do")
	public String userpage() {
		System.out.println("user페이지 요청......");
		return "mypage/user";
	}
	@RequestMapping(value = "/menu/mypage/pet_register.do", method = RequestMethod.GET)
	public String petwPage() {
		return "mypage/pet_register";
	}
	@RequestMapping(value = "/menu/mypage/sitter_update.do", method = RequestMethod.GET)
	public String sitterwPage() {
		return "mypage/sitter_update";
	}
	@RequestMapping(value = "/menu/mypage/user_update.do", method = RequestMethod.GET)
	public String userwPage() {
		return "mypage/user_update";
	}
	@RequestMapping(value = "/mypage/write.do", method = RequestMethod.GET)
	public String writePage() {
		return "mypage/writepage";
	}


	

	@RequestMapping("/mypage/list.do")
	public ModelAndView list(String category) {
		System.out.println("category=>" + category);
		ModelAndView mav = new ModelAndView("mypage/list");
		List<MypageDTO> mypagelist = service.findByCategory(category);
		System.out.println(mypagelist);
		mav.addObject("category", category);
		mav.addObject("mypagelist", mypagelist);
		return mav;
	}

	@RequestMapping("/mypage/read.do")
	public String read(String sitter_id, String state, Model model) {
		// ModelAndView mav = new ModelAndView();
		MypageDTO mypage = service.getSitter_info(sitter_id);
		

		String view = "";
		if (state.equals("READ")) {
			view = "mypage/read";
		} else {
			view = "mypage/update";
		}
	
		model.addAttribute("mypage", mypage);
		
		return view;
	}

	// delete를 시도하면 로그인 유무를 체크해서 로그인을 하지 않은 사용자는 로그인을 할 수 있도록 로그인페이지로 리다이렉트
	@RequestMapping("/mypage/delete.do")
	public String delete(String sitter_id, HttpSession session) {
		MypageDTO user = (MypageDTO) session.getAttribute("user");
		// 로그인한 사용자를 찾는다
		String view = "";
		if (user == null) {// 로그인하지 않은 상태
			view = "redirect://login.do";
		} else {
			int result = service.delete(sitter_id);
			view = "redirect:/mypage/list.do?category=all";
		}
		return view;
	}

	// 실제 업데이트기능을 처리
	@RequestMapping("/mypage/update.do")
	public String update(MypageDTO mypage) {
		System.out.println(mypage + "----업데이트-----");
		int result = service.update(mypage);
		return "redirect:/board/list.do?category=all";
	}

	@RequestMapping("/mypage/search.do")
	public ModelAndView search(String tag, String data) {
		ModelAndView mav = new ModelAndView("mypage/list");
		List<MypageDTO> mypagelist = service.search(tag, data);
		System.out.println(mypagelist);
		mav.addObject("boardlist", mypagelist);
		return mav;
	}

	// ajax요청으로 실행될 메소드
	// jackson라이브러리가 List에 저장된 DTO들을 자동으로 json객체로 변환
	@RequestMapping(value = "/mypage/ajax/list.do", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<MypageDTO> ajaxlist(String category) {
		System.out.println("category=>" + category);

		List<MypageDTO> mypageList = service.findByCategory(category);
		System.out.println("ajax통신:" + mypageList);
		return mypageList;
	}
}
