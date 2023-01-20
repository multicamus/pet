package mutli.com.pet.erp;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.WebUtils;

import multi.com.pet.etc.FileUploadLogic3;
import multi.com.pet.resv.ResvDTO;
import mutli.com.pet.mypet.PetDTO;

@Controller
@RequestMapping("/erp")
@SessionAttributes("user")
public class MemberController {
	MemberService service;
	FileUploadLogic3 fileUploadService;
	
	@Autowired
	public MemberController(MemberService service, FileUploadLogic3 fileUploadService) {
		super();
		this.service = service;
		this.fileUploadService = fileUploadService;
	}

	@RequestMapping(value = "user/login.do", method = RequestMethod.POST)
	public String login(MemberDTO loginUserInfo, Model model, HttpServletRequest hsr) {
		MemberDTO user = service.login(loginUserInfo);
		List<PetDTO> petList = service.petList(loginUserInfo);
		String view = "";
		
		if(user!=null) {
			LoginUserDTO loginUser = new LoginUserDTO(user.getUser_type(), user.getMember_name(), user.getMember_id(), user.getMember_no(), user.getMember_gender(), user.getMember_email(), user.getMember_phone(), user.getMember_addr1(), user.getMember_addr2(), user.getMember_photo(), user.getStart_date(), user.getEnd_date(), user.getMember_code(), user.getMember_status(), user.getHospital_addr(), user.getHospital_name());
			model.addAttribute("user", loginUser);
			HttpSession hs = hsr.getSession();

			hs.setAttribute("mypetlist", petList);
			view = "home";
		}else {
			view = "login";
		}
		return view;		
	}
	
	@RequestMapping(value = "sitter/login.do", method = RequestMethod.POST)
	public String login(SitterDTO loginUserInfo, Model model, HttpServletRequest hsr) {
		HttpSession hs = hsr.getSession();
		SitterDTO user = service.login(loginUserInfo);
		
		String size = Integer.toString(service.sitter_resvlist(loginUserInfo.getSitter_id()).size());
		
		hs.setAttribute("size", size);
		String view = "";
		
		if(user!=null) {
			model.addAttribute("user", new LoginUserDTO(user.getUser_type(), user.getSitter_name(), user.getSitter_id(), user.getSitter_code(), user.getSitter_gender(), user.getSitter_email(), user.getSitter_phone(), user.getSitter_addr1(), user.getSitter_addr2(), user.getSitter_startdate(), user.getSitter_enddate(), user.getSitter_status(), user.getSitter_birthdate(), user.getService_area(), user.getSitter_info(), user.getValid(), user.getSitter_certificate(), user.getSitter_rate()));
			view = "home";
		}else {
			view = "login";
		}
		return view;		
	}
	
	@RequestMapping(value = "/logout.do")
	public String logout(SessionStatus status, HttpServletRequest hsr) {
		HttpSession hs = hsr.getSession();
		hs.invalidate();
		status.setComplete();
		return "redirect:/";
	}
	
	@RequestMapping(value = "/member/read.do", method = RequestMethod.GET)
	public String member_read(String member_id, String state, Model model) {
		MemberDTO member = service.member_read(member_id);
		List<ResvDTO> resvlist = service.resvlist(member_id);
		String view = "";
		switch (state) {
		case "READ":
			view = "mypage/user";
			model.addAttribute("resvlist", resvlist);
			break;
		default:
			view = "mypage/user_update";
			break;
		}
		System.out.println(member);
		model.addAttribute("member", member);
		return view;
	}
	
	@RequestMapping(value = "/sitter/read.do", method = RequestMethod.GET)
	public String sitter_read(String sitter_id, String state, Model model, HttpServletRequest hsr) {
		SitterDTO sitter = service.sitter_read(sitter_id);
		SitterImgDTO sitter_img = service.sitter_img_read(sitter_id);
		List<ResvDTO> resvlist = service.sitter_resvlist(sitter_id);
		HttpSession hs = hsr.getSession();
		String view = "";
		switch (state) {
		case "READ":
			view = "mypage/sitter";
			model.addAttribute("resvlist", resvlist);
			
			break;
		default:
			view = "mypage/sitter_update";
			
			break;
		}
		model.addAttribute("sitter", sitter);
		hs.setAttribute("sitter", sitter);
		hs.setAttribute("sitter_img", sitter_img);
		return view;
	}
	
	@RequestMapping(value = "/member/update.do", method = RequestMethod.POST)
	public String member_update(MemberDTO member) {
		System.out.println(member);
		service.update(member);
		return "redirect:/erp/member/read.do?member_id=" + member.getMember_id() + "&state=READ";
	}
	
	@RequestMapping(value = "/sitter/update.do", method = RequestMethod.POST)
	public String sitter_update(SitterDTO sitter, HttpSession session) throws IOException {
		System.out.println(sitter);
		MultipartFile img = sitter.getSitter_photo();
		System.out.println(img);
		
		String path = WebUtils.getRealPath(session.getServletContext(), "/resources/sitter");
		System.out.println(path);
		
		SitterImgDTO imgFile = fileUploadService.uploadFile(sitter.getSitter_id(), img, path);
		System.out.println(imgFile.getSitter_id());
		service.update(sitter, imgFile);
		return "redirect:/erp/sitter/read.do?sitter_id=" + sitter.getSitter_id() + "&state=READ";
	}
	
	@RequestMapping(value = "/sitter/certi_update.do", method = RequestMethod.POST)
	public String sitter_certi_update(SitterDTO sitter) {
		System.out.println(sitter);
		int result = service.certi_update(sitter);
		System.out.println(result);
		return "redirect:/erp/sitter/read.do?sitter_id=" + sitter.getSitter_id() + "&state=READ";
	}
	
//	@RequestMapping(value = "user/register.do",produces ="application/text;charset=utf-8" )
//	@ResponseBody
//	public String kakao_login(@RequestBody String map) {
//		System.out.println(map.toString());
//		return "register";
//		
//	}
	
//	@RequestMapping(value = "user/register.do")
//	public String register(@RequestBody String data) {
//		System.out.println(data+"***************************");
//		return "register";
//	}
	
	@RequestMapping(value = "user/register.do")
	public String register(MemberDTO member, Model model) {
		model.addAttribute("member", member);
		return "register";
	}
	
	@RequestMapping(value = "user/insert.do")
	public String insert(MemberDTO member, Model model) {
		int result = service.insert(member);
		
		if(result == 1) {
			MemberDTO user = service.login(member);
			LoginUserDTO loginUser = new LoginUserDTO(user.getUser_type(), user.getMember_name(), user.getMember_id(), user.getMember_no(), user.getMember_gender(), user.getMember_email(), user.getMember_phone(), user.getMember_addr1(), user.getMember_addr2(), user.getMember_photo(), user.getStart_date(), user.getEnd_date(), user.getMember_code(), user.getMember_status(), user.getHospital_addr(), user.getHospital_name());
			model.addAttribute("user", loginUser);
		}
		return "home";
	}
	
	@RequestMapping(value = "sitter/insert.do")
	public String insert(SitterDTO sitter, Model model, HttpSession session) throws IOException {
		MultipartFile img = sitter.getSitter_photo();
		System.out.println(img);
		
		String path = WebUtils.getRealPath(session.getServletContext(), "/resources/sitter");
		System.out.println(path);
		
		SitterImgDTO imgFile = fileUploadService.uploadFile(sitter.getSitter_id(), img, path);
		System.out.println(imgFile.getSitter_id());
		
		int result = service.insert(sitter, imgFile);
		
		if(result == 1) {
			SitterDTO user = service.login(sitter);
			model.addAttribute("user", new LoginUserDTO(user.getUser_type(), user.getSitter_name(), user.getSitter_id(), user.getSitter_code(), user.getSitter_gender(), user.getSitter_email(), user.getSitter_phone(), user.getSitter_addr1(), user.getSitter_addr2(), user.getSitter_startdate(), user.getSitter_enddate(), user.getSitter_status(), user.getSitter_birthdate(), user.getService_area(), user.getSitter_info(), user.getValid(), user.getSitter_certificate(), user.getSitter_rate()));
		}
		return "home";
	}
	
	@RequestMapping(value = "admin.do")
	public String admin(Model model) {
		List<SitterDTO> sitterlist = service.sitterList();
		// for문으로 sitterlist를 탐색해서 valid 값이 1면 승인 ,1가 아니면 미승인
		//변수 세 개를 정의 후 전체 갯수, 1상태의 갯수, 1가 아닌 갯수를 저장하고 sysout출력해보기
		int total = sitterlist.size();
		int atotal = 0;//valid가 1인 경우
		int untotal = 0;
		for(int i=0; i<sitterlist.size();i++) {
			SitterDTO sDto =  sitterlist.get(i);
			System.out.println(sDto);
			if(sDto.getValid().equals("1")) {
				System.out.println("활동승인");
				atotal++;
			}else  {
				System.out.println("미승인");
				untotal++;
			}
			
		}
		System.out.println(sitterlist);
		model.addAttribute("total",total);
		model.addAttribute("atotal",atotal);
		model.addAttribute("untotal",untotal);
		model.addAttribute("sitterlist", sitterlist);
		return "mypage/admin";
	}
	
	@RequestMapping(value="member/idCheck.do", produces = "application/text;charset=utf-8")
	@ResponseBody
	public String idcheck(String id) {
		MemberDTO result = service.idcheck(id);
		SitterDTO result2 = service.sitteridcheck(id);
		String msg = "";
		if(result != null || result2 != null) {
			msg = "중복 된 아이디 입니다.";
		}
		else {
			msg = "사용 가능 한 아이디 입니다.";
		}
		return msg;
	}
	

}




































	