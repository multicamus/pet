package mutli.com.pet.erp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	@RequestMapping(value="/erp",method=RequestMethod.GET)
	public String login() {
		return "null";
	}
}
