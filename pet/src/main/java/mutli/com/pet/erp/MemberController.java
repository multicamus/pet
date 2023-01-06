package mutli.com.pet.erp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
		PetDTO pet = service.pet(loginUserInfo);
		System.out.println(pet);
		String view = "";
		
		if(user!=null) {
			model.addAttribute("user", new LoginUserDTO(user.getMember_name(), user.getMember_id(), user.getMember_no(), user.getMember_gender(), user.getMember_email(), user.getMember_phone(), user.getMember_addr1(), user.getMember_addr2(), user.getMember_photo(), user.getStart_date(), user.getEnd_date(), user.getMember_code(), user.getMember_status()));
			HttpSession hs = hsr.getSession();
			hs.setAttribute("pet", pet);
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
		System.out.println(user);
		if(user!=null) {
			model.addAttribute("user", new LoginUserDTO(user.getSitter_name(), user.getSitter_id(), user.getSitter_code(), user.getSitter_gender(), user.getSitter_email(), user.getSitter_phone(), user.getSitter_addr1(), user.getSitter_addr2(), user.getSitter_startdate(), user.getSitter_enddate(), user.getSitter_status(), user.getSitter_birthdate(), user.getService_area(), user.getSitter_info(), user.getValid(), user.getSitter_career(), user.getSitter_certificate(), user.getSitter_rate()));
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
	
	


	
}
