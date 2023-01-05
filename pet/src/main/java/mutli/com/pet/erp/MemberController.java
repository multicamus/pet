package mutli.com.pet.erp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

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

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(MemberDTO loginUserInfo, Model model) {
		System.out.println(loginUserInfo);
		MemberDTO user = service.login(loginUserInfo);
		
		String view = "";
		if(user!=null) {
			model.addAttribute("user", user);
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
