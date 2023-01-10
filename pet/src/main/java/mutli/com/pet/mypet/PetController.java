package mutli.com.pet.mypet;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mutli.com.pet.erp.MemberService;

@Controller
@RequestMapping("/mypet")
public class PetController {
	PetService ps;
	MemberService ms;
	
	@Autowired
	public PetController(PetService ps, MemberService ms) {
		super();
		this.ps = ps;
		this.ms = ms;
	}

	// insert
	@RequestMapping(value="/insert.do")
	public String insert(PetDTO pet, Model model, String pet_id, String member_id, HttpServletRequest hsr) {
		int result = ps.insert(pet);
		
		if(result == 1) {
			HttpSession hs = hsr.getSession();
			hs.removeAttribute("mypetlist");
			
			List<PetDTO> petList = ms.petList(member_id);
			model.addAttribute("mypetlist", petList);
		}
		
		return "redirect:/mypet/read.do?pet_id=" + pet_id + "&state=READ";
	}

	// read
	@RequestMapping(value="/read.do")
	public String read(String pet_id, String state, Model model) {
		PetDTO pet = ps.read(pet_id);
		String view = "";
		switch (state) {
		case "READ":
			view = "mypage/pet";
			break;
		default:
			view = "mypage/pet_update";
			break;
		}
		model.addAttribute("pet", pet);
		return view;
	}
	
	// update
	@RequestMapping(value="/update.do")
	public String update(PetDTO pet, String member_id, HttpServletRequest hsr, Model model) {
		int result = ps.update(pet);
		
		if(result == 1) {
			HttpSession hs = hsr.getSession();
			hs.removeAttribute("mypetlist");
			
			List<PetDTO> petList = ms.petList(member_id);
			model.addAttribute("mypetlist", petList);
		} 
		
		return "redirect:/mypet/read.do?pet_id=" + pet.getPet_id() + "&state=READ";
	}
	
	// delete
	@RequestMapping(value="/delete.do")
	public String delete(String pet_id, String member_id, HttpServletRequest hsr, Model model) {
		int result = ps.delete(pet_id);
		
		if(result == 1) {
			HttpSession hs = hsr.getSession();
			hs.removeAttribute("mypetlist");
			
			List<PetDTO> petList = ms.petList(member_id);
			model.addAttribute("mypetlist", petList);
		} 
		return "redirect:/erp/member/read.do?membert_id=" + member_id + "&state=READ";
	}

}
