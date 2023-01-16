package mutli.com.pet.mypet;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mutli.com.pet.erp.MemberDTO;
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
	
	// insert
	@RequestMapping(value="/insert.do")
	public String insert(PetDTO pet, Model model, String pet_id, String member_id, HttpServletRequest hsr) {
		int result = ps.insert(pet);
		
		if(result == 1) {
			HttpSession hs = hsr.getSession();
			hs.removeAttribute("mypetlist");
			System.out.println(member_id);
			List<PetDTO> petList = ms.petList(member_id);
			System.out.println("☆☆☆☆☆☆☆"+petList);
			hs.setAttribute("mypetlist", petList);
		}
		
		return "redirect:/mypet/read.do?pet_id=" + pet_id + "&state=READ";
	}
	
	// update
	@RequestMapping(value="/update.do")
	public String update(PetDTO pet, String member_id, HttpServletRequest hsr, Model model) {
		int result = ps.update(pet);
		
		if(result == 1) {
			HttpSession hs = hsr.getSession();
			hs.removeAttribute("mypetlist");
			
			List<PetDTO> petList = ms.petList(member_id);
			System.out.println(petList);
			hs.setAttribute("mypetlist", petList);
			System.out.println("*****" + petList);
		} 
		return "redirect:/mypet/read.do?pet_id=" + pet.getPet_id() + "&state=READ";
	}
	
	// delete
	@RequestMapping(value="/delete.do")
	public String delete(String pet_id, String member_id, HttpServletRequest hsr, Model model) {
		int result = ps.delete(pet_id);
		MemberDTO member = ms.member_read(member_id);
		
		if(result == 1) {
			HttpSession hs = hsr.getSession();
			hs.removeAttribute("mypetlist");
			List<PetDTO> petList = ms.petList(member_id);
			hs.setAttribute("mypetlist", petList);
			System.out.println("#######"+petList);
		} 
		model.addAttribute("member", member);
		return "mypage/user";
	}

}
