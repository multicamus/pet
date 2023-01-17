package mutli.com.pet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import mutli.com.pet.erp.MemberService;
import mutli.com.pet.mypet.PetService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	MemberService memeber_service;
	PetService pet_service;
	
	@Autowired
	public AdminController(MemberService memeber_service, PetService pet_service) {
		super();
		this.memeber_service = memeber_service;
		this.pet_service = pet_service;
	}

	@RequestMapping(value="/valid/update.do", method=RequestMethod.GET)
	@ResponseBody
	public String valid_update(String valid_data) {
		System.out.println(valid_data);
		String msg = "";
		if(valid_data.equals("1")) {
			msg = "0";
			System.out.println("미승인");
		}else {
			msg = "1";
			System.out.println("승인");
		}
		 
		return msg;
	}

}