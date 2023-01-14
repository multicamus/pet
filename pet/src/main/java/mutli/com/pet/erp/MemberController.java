package mutli.com.pet.erp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import mutli.com.pet.mypet.PetDTO;

@Controller
@RequestMapping("/erp")
@SessionAttributes("user")
public class MemberController {
	MemberService service;
	
	@Autowired
	public MemberController(MemberService service) {
		super();
		this.service = service;
	}

	@RequestMapping(value = "user/login.do", method = RequestMethod.POST)
	public String login(MemberDTO loginUserInfo, Model model, HttpServletRequest hsr) {
		MemberDTO user = service.login(loginUserInfo);

		List<PetDTO> petList = service.petList(loginUserInfo);
		String view = "";
		
		if(user!=null) {
			LoginUserDTO loginUser = new LoginUserDTO(user.getUser_type(), user.getMember_name(), user.getMember_id(), user.getMember_no(), user.getMember_gender(), user.getMember_email(), user.getMember_phone(), user.getMember_addr1(), user.getMember_addr2(), user.getMember_photo(), user.getStart_date(), user.getEnd_date(), user.getMember_code(), user.getMember_status());
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
	public String login(SitterDTO loginUserInfo, Model model) {
		SitterDTO user = service.login(loginUserInfo);
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
	public String logout(SessionStatus status) {
		status.setComplete();
		return "redirect:/";
	}
	
	@RequestMapping(value = "/member/read.do", method = RequestMethod.GET)
	public String member_read(String member_id, String state, Model model) {
		MemberDTO member = service.member_read(member_id);
		String view = "";
		switch (state) {
		case "READ":
			view = "mypage/user";
			break;
		default:
			view = "mypage/user_update";
			break;
		}
		model.addAttribute("member", member);
		return view;
	}
	
	@RequestMapping(value = "/sitter/read.do", method = RequestMethod.GET)
	public String sitter_read(String sitter_id, String state, Model model) {
		SitterDTO sitter = service.sitter_read(sitter_id);
		String view = "";
		switch (state) {
		case "READ":
			view = "mypage/sitter";
			break;
		default:
			view = "mypage/sitter_update";
			break;
		}
		model.addAttribute("sitter", sitter);
		return view;
	}
	
	@RequestMapping(value = "/member/update.do", method = RequestMethod.POST)
	public String member_update(MemberDTO member) {
		service.update(member);
		return "redirect:/erp/member/read.do?member_id=" + member.getMember_id() + "&state=READ";
	}
	
	@RequestMapping(value = "/sitter/update.do", method = RequestMethod.POST)
	public String sitter_update(SitterDTO sitter) {
		service.update(sitter);
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
			LoginUserDTO loginUser = new LoginUserDTO(user.getUser_type(), user.getMember_name(), user.getMember_id(), user.getMember_no(), user.getMember_gender(), user.getMember_email(), user.getMember_phone(), user.getMember_addr1(), user.getMember_addr2(), user.getMember_photo(), user.getStart_date(), user.getEnd_date(), user.getMember_code(), user.getMember_status());
			model.addAttribute("user", loginUser);
		}
		return "home";
	}
	
	@RequestMapping(value = "sitter/insert.do")
	public String insert(SitterDTO sitter, Model model) {
		System.out.println(sitter);
		int result = service.insert(sitter);
		
		if(result == 1) {
			SitterDTO user = service.login(sitter);
			model.addAttribute("user", new LoginUserDTO(user.getUser_type(), user.getSitter_name(), user.getSitter_id(), user.getSitter_code(), user.getSitter_gender(), user.getSitter_email(), user.getSitter_phone(), user.getSitter_addr1(), user.getSitter_addr2(), user.getSitter_startdate(), user.getSitter_enddate(), user.getSitter_status(), user.getSitter_birthdate(), user.getService_area(), user.getSitter_info(), user.getValid(), user.getSitter_career(), user.getSitter_certificate(), user.getSitter_rate()));
		}
		return "home";
	}
	
	@RequestMapping(value = "admin.do")
	public String admin(Model model) {
		List<SitterDTO> sitterlist = service.sitterList();
		model.addAttribute("sitterlist", sitterlist);
		return "mypage/admin";
	}
	
	@RequestMapping(value="member/idCheck.do", produces = "application/text;charset=utf-8")
	@ResponseBody
	public String ajaxtest(String member_id) {
		String msg = "";
		if (member_id.equals("jang")) {
			msg = "중복 된 아이디 입니다.";
		} else {
			msg = "사용 가능한 아이디 입니다.";
		}
		return msg;
	}
		

	
}

	