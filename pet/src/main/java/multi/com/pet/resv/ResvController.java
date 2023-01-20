package multi.com.pet.resv;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import mutli.com.pet.erp.LoginUserDTO;
import mutli.com.pet.erp.MemberDTO;
import mutli.com.pet.erp.MemberService;
import mutli.com.pet.erp.SitterDTO;
import mutli.com.pet.review.ReviewDTO;
import mutli.com.pet.review.ReviewService;

@Controller
public class ResvController {
	ResvService service;
	ReviewService reviewservice;
	MemberService mbservice;
	
	@Autowired
	public ResvController(ResvService service, ReviewService reviewservice, MemberService mbservice) {
		super();
		this.service = service;
		this.reviewservice = reviewservice;
		this.mbservice = mbservice;
	}
	

	@RequestMapping("/reserve/resv1_mb.do")
	public String resv1(ResvDTO resvdto, String servicecode, String pet_idlist, String pet_codelist,  HttpSession session, Model model) {
		System.out.println("resv1컨트롤러");
		System.out.println(resvdto);
		System.out.println(servicecode);
		System.out.println(pet_idlist);
		System.out.println(pet_codelist);
		
		//나열된 servicecode의 문자열을 ","를 기준으로 split
		String[] servicecodeArr = servicecode.split(",");
		
		for(int i=0;i<servicecodeArr.length;i++) {
			if(servicecodeArr[i].equals("bath_service")) {
				resvdto.setBath_service('Y');
				resvdto.setTotal_price(resvdto.getTotal_price()+5000);
			}
			if(servicecodeArr[i].equals("walk_service")) {
				resvdto.setWalk_service('Y');
				resvdto.setTotal_price(resvdto.getTotal_price()+3000);
			}
			if(servicecodeArr[i].equals("beauty_service")) {
				resvdto.setBeauty_service('Y');
				resvdto.setTotal_price(resvdto.getTotal_price()+5000);
			}
		}

		//시작시간+서비스시간 = 종료시간 설정
		int endtime= resvdto.getService_starttime()+resvdto.getService_time();
		resvdto.setService_endtime(endtime);

		//pet_codelist에 DOG, CAT 둘다 포함이 되어있으면
		if(pet_codelist.contains("CAT")&&pet_codelist.contains("DOG")) {
			model.addAttribute("pet_codearray", "A");
		}else if(pet_codelist.contains("CAT")) {
			model.addAttribute("pet_codearray", "C");
		}else {
			model.addAttribute("pet_codearray", "D");
		}

		System.out.println(resvdto);
		
		//resvdto를 가지고 지정뷰로 이동
		model.addAttribute("resvdto", resvdto);
		
		return "resv/resv_2";
	}



	@RequestMapping("/reserve/resv2_mb.do")
	public String resv2(ResvDTO resvdto,  Model model) {
		System.out.println("컨트롤러");
		System.out.println(resvdto);
		System.out.println("sittername:"+resvdto.getSitter_name());
		String gender = resvdto.getPrefer_gender(); //선호 성별
		String size= resvdto.getPrefer_size(); //선호 사이즈
		String method = resvdto.getMatch_method(); //매칭 방법
		
		System.out.println(gender);
		System.out.println(size);
		System.out.println(method);
		
		System.out.println(resvdto);
		model.addAttribute("resvdto", resvdto);
		return "resv/resv_3";
	}
	
	@RequestMapping("/reserve/resv3_mb.do")
	public String resv3(ResvDTO resvdto, Model model,  HttpSession session) {
		System.out.println("컨트롤러3");
		
		String[] idArray = resvdto.getPet_idlist().split(",");
		String[] codeArray = resvdto.getPet_codelist().split(",");
		String[] nameArray = resvdto.getPet_namelist().split(",");
		String simpleAddr = resvdto.getVisit_place();
		
		SitterDTO sitter = mbservice.sitter_read(resvdto.getSitter_id());
		sitter.setSitter_age(sitter.calcAge());
		
		if(idArray.length == 2) {
			resvdto.setTotal_price(resvdto.getTotal_price()+10000);
		}
		
		if(idArray.length == 3) {
			resvdto.setTotal_price(resvdto.getTotal_price()+20000);
		}
		
		for(int i=0; i<nameArray.length;i++) {
			System.out.println("nameArray:"+nameArray[i]);
		}
		
		ArrayList<String> idlist = new ArrayList<String>();
		ArrayList<String> codelist = new ArrayList<String>();
		ArrayList<String> namelist = new ArrayList<String>();
		
		for(int i=0; i<idArray.length;i++) {
			idlist.add(idArray[i]);
			codelist.add(codeArray[i]);
			namelist.add(nameArray[i]);
		}
		
		LoginUserDTO user = (LoginUserDTO)session.getAttribute("user");
		String addr = user.getMember_addr1() + " " + user.getMember_addr2();
		resvdto.setVisit_place(addr);
		System.out.println("서비스이용장소:"+resvdto.getVisit_place());
		
		model.addAttribute("idlist", idlist);
		model.addAttribute("codelist", codelist);		
		model.addAttribute("namelist", namelist);
		model.addAttribute("sitter", sitter);
		model.addAttribute("resvdto", resvdto);
		return "resv/resv_pay";
	}
	
	@RequestMapping("/reserve/insert.do")
	public String insert(ResvDTO resvdto, Model model, HttpSession session) {
		System.out.println("예약테이블에 넣기 컨트롤러");
		System.out.println(resvdto);
		LoginUserDTO user =  (LoginUserDTO) session.getAttribute("user");
		String id = user.getMember_id();
		
		
		resvdto.setMember_id(id);
		
		
		System.out.println(resvdto);
		service.insert(resvdto);
		System.out.println(resvdto);
		session.setAttribute("user", user);
		
		return "redirect:/reserve/list.do";
	}
	
	@RequestMapping("/reserve/list.do")
	public String list(Model model, HttpSession session) {
		
		LoginUserDTO user =  (LoginUserDTO) session.getAttribute("user");
		System.out.println("user객체:"+user);
		System.out.println("userid:"+user.getMember_id());
		System.out.println("userid:"+user.getSitter_id());
		System.out.println("userid:"+user.getUser_type());

		// 돌봄완료시 해당 커리어를 1씩 증가시킴
		// 예약리스트를 불러올때 예약상태(resv_status) 갱신
		// 0: 매칭요청중, 1: 매칭성공, 2: 매칭기간초과실패,3: 이용자가 취소, 4: 펫시터가 거절, 5: 돌봄완료
		int count = service.changeStatus();
		service.updateFinish();
		System.out.println("count:"+count);
		List<ResvDTO> resvlist = service.resvlist(user);
		//갖고 온 예약리스트의 이용후기작성 여부를 확인한다. 리뷰테이블에 존재하는 예약번호가 String리스트에 담아져서 반환된다.
		List<String> reviewlist = service.checkReview(resvlist);
		System.out.println("reviewlist:"+reviewlist);
		
		String view = "";
		if(user.getUser_type().equals("M")) {
			System.out.println("mblist");
			view = "resv/resvmb_list";
		}else {
			view = "resv/resvst_list";

		}
		
		model.addAttribute("resvlist", resvlist);
		model.addAttribute("reviewlist", reviewlist);
		System.out.println(resvlist);
		return view;
	}
	
	@RequestMapping("/reserve/read.do")
	public String read(String resv_no, Model model, HttpSession session) {
		System.out.println("예약번호:"+resv_no);
		ResvDTO resvdto = service.resvread(resv_no);
		String[] codearray = resvdto.getPet_codelist().split(",");
		String[] namearray = resvdto.getPet_namelist().split(",");
		
		String memberid = resvdto.getMember_id();
		MemberDTO member = (MemberDTO) mbservice.member_read(memberid);
		String addr1 = member.getMember_addr1();
		member.setMember_age(member.calcAge());
		
		
		SitterDTO sitter = service.readSitter(resvdto.getSitter_id());
		String sitter_name =  sitter.getSitter_name();
		sitter.setSitter_age(sitter.calcAge());
		
		
		
		resvdto.setSitter_name(sitter_name);
		
		List<String> codelist = new ArrayList<String>();
		List<String> namelist = new ArrayList<String>();
		
		for(int i=0;i<codearray.length;i++) {
			codelist.add(codearray[i]);
			namelist.add(namearray[i]);
		}
		
		String view = "";
		
		LoginUserDTO user = (LoginUserDTO) session.getAttribute("user");
		if(user.getUser_type().equals("M")) {
			view = "resv/resvmb_read";
			model.addAttribute("sitter", sitter);
			model.addAttribute("member", member);

		}else {
			view = "resv/resvst_read";
			model.addAttribute("member", member);
		}
		
		
		model.addAttribute("codelist", codelist);
		model.addAttribute("namelist", namelist);
		model.addAttribute("resvdto", resvdto);
		model.addAttribute("addr1", addr1);
		System.out.println(resvdto);
		System.out.println(resvdto.getPet_codelist());
		System.out.println(resvdto.getPet_namelist());
		return view;
	}
	
	@RequestMapping("/reserve/approve.do")
	public String approve(String resv_no, Model model, HttpSession session) {
		System.out.println("매칭승인");
		LoginUserDTO user = (LoginUserDTO) session.getAttribute("user");
		service.approve(resv_no);
		System.out.println(user);
		session.setAttribute("user", user);
		return "redirect:/reserve/list.do";
	}
	
	//예약번호로 해당 리뷰 상세보기
	@RequestMapping(value= "/reserve/review/read.do", method = RequestMethod.GET)
	public ModelAndView read_detail(String resv_no) { 
		ModelAndView mav = new ModelAndView("review/read");
		ReviewDTO readlist = reviewservice.read_detail(resv_no);
		mav.addObject("review",readlist);
		System.out.println(readlist);
		return mav;
	}
	
	//예약번호로 해당 리뷰 쓰기
	@RequestMapping(value= "/reserve/review/write.do", method = RequestMethod.GET)
	public ModelAndView write_detail(String resv_no) { 
		ModelAndView mav = new ModelAndView("review/read");
		ReviewDTO readlist = reviewservice.read_detail(resv_no);
		mav.addObject("review",readlist);
		System.out.println(readlist);
		return mav;
	}	
	@RequestMapping("/reserve/cancel.do")
	public String cancel(String resv_no, Model model, HttpSession session) {
		System.out.println("결제취소");
		LoginUserDTO user =  (LoginUserDTO) session.getAttribute("user");
		service.cancelResv(resv_no, user);
		System.out.println(user);
		session.setAttribute("user", user);
		return "redirect:/reserve/list.do";
	}
	
	
	@RequestMapping(value="/sitter/ajax/list.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public List<SitterDTO> directlist(String gender, String size, String code, HttpSession session){
		System.out.println(gender);
		System.out.println(size);
		System.out.println(code);
		LoginUserDTO user =  (LoginUserDTO) session.getAttribute("user");
		String shortAddr = user.createShortAddr();
		System.out.println(shortAddr);
		List<SitterDTO> sitterlist =  service.directlist(gender, size, code, shortAddr);
		//불러온 시터중에서 관리자가 포함되어 있다면 빼기
		for(int i=0;i<sitterlist.size();i++) {
			if(sitterlist.get(i).getSitter_id().equals("admin")) {
				sitterlist.remove(sitterlist.get(i));
			}

		}
		
		System.out.println(sitterlist);
		
		return sitterlist;
	}
	
	@RequestMapping(value="/sitter/ajax/pastlist.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public List<SitterDTO> pastlist(String code, HttpSession session){
		LoginUserDTO user =  (LoginUserDTO) session.getAttribute("user");
		String member_id = user.getMember_id();
		String shortAddr = user.createShortAddr();
		List<SitterDTO> sitterlist = service.pastlist(code, member_id, shortAddr);
		System.out.println("과거이용:"+sitterlist);
		return sitterlist;
	}
	
	@RequestMapping(value="/sitter/ajax/read.do", produces="application/json;charset=utf-8")
	@ResponseBody
	SitterDTO readSitter(String sitter_id) {
		System.out.println(sitter_id);
		SitterDTO sitter = service.readSitter(sitter_id);
		//sitter.calcAge(sitter.getSitter_birthdate());
		sitter.setSitter_shortAddr("");
		sitter.setSitter_age(sitter.calcAge());
		System.out.println(sitter.getSitter_age());
		System.out.println(sitter.getSitter_shortAddr());
		
		System.out.println(sitter);
		return sitter;
	}
	
	
}
