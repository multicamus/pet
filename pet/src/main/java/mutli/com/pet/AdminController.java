package mutli.com.pet;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import mutli.com.pet.erp.MemberService;
import mutli.com.pet.erp.SitterDTO;
import mutli.com.pet.mypet.PetService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	MemberService memeber_service;
	PetService pet_service;
	AdminService admin_service;
	@Autowired
	public AdminController(MemberService memeber_service, PetService pet_service, AdminService admin_servieService) {
		super();
		this.memeber_service = memeber_service;
		this.pet_service = pet_service;
		this.admin_service = admin_servieService;
	}
	//3. 서비스를 상속하는 serviceImpl만들고
	//4. dao를 상속하는 daoImpl에 메소드만들기
	//5. mapper에 sql명령어 추가
	//   => board.xml에서 update부분을 참고해서 만들

	@RequestMapping(value="/valid/update.do", method=RequestMethod.GET)
	public String valid_update(String valid_data,String sitter_id) {
		System.out.println(valid_data+","+sitter_id);
		String msg = "";
		admin_service.update(valid_data,sitter_id);
		if(valid_data.equals("1")) {
			msg = "1";
			System.out.println("승인");
		}else {
			msg = "0";
			System.out.println("미승인");
		}
		return "redirect:/erp/admin.do";
	}
	/*
	 * @RequestMapping(value = "/admin/popup", method = RequestMethod.GET) public
	 * String adminpop() { return null; }
	 */
	@RequestMapping("/admin/search.do")
	public ModelAndView search(String category,String search_val) {
		System.out.println("search컨트롤러");
		ModelAndView mav = new ModelAndView("mypage/admin");
		List<SitterDTO> sitterlist = admin_service.search(category,search_val);
		System.out.println(sitterlist);
		mav.addObject("sitterlist", sitterlist);
		System.out.println("tag-----"+category);
		System.out.println("data===="+search_val);
		return mav;
	}
	@RequestMapping(value = "/admin/ajax/list.do", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<SitterDTO> ajaxlist(String category) {
		System.out.println("category=>"+category);
		
		List<SitterDTO> sitterlist = admin_service.findByCategory(category);
		System.out.println("ajax통신:"+sitterlist);
		return sitterlist;
	}
	
}