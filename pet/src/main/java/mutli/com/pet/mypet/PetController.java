package mutli.com.pet.mypet;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import multi.com.pet.etc.FileUploadLogic;
import mutli.com.pet.erp.MemberDTO;
import mutli.com.pet.erp.MemberService;

@Controller
@RequestMapping("/mypet")
public class PetController {
	PetService ps;
	MemberService ms;
	FileUploadLogic ful;
	
	@Autowired
	public PetController(PetService ps, MemberService ms, FileUploadLogic ful) {
		super();
		this.ps = ps;
		this.ms = ms;
		this.ful = ful;
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
	public String insert(PetDTO pet, Model model, String pet_id, String member_id, HttpServletRequest hsr) throws IOException {
		MultipartFile img = pet.getPet_img();
		String path = "C:/Users/ohsy/git/petRe/pet/src/main/webapp/resources/pet";
		PetDTO pet_img = ful.petUploadImg(pet, img, path);
		int result = ps.insert(pet_img);
		if(result == 1) {
			HttpSession hs = hsr.getSession();
			hs.removeAttribute("mypetlist");
			List<PetDTO> petList = ms.petList(member_id);
			hs.setAttribute("mypetlist", petList);
		}
		return "redirect:/mypet/read.do?pet_id=" + pet_id + "&state=READ";
	}
	
	// update
	@RequestMapping(value="/update.do")
	public String update(PetDTO pet, String member_id, HttpServletRequest hsr, Model model) throws IOException {
		MultipartFile img = pet.getPet_img();
		String path = "C:/Users/ohsy/git/petRe/pet/src/main/webapp/resources/pet";
		PetDTO pet_img = ful.petUploadImg(pet, img, path);
		// 기존 사진 파일을 삭제하는 코드가 필요
		int result = ps.update(pet_img);
		if(result == 1) {
			HttpSession hs = hsr.getSession();
			hs.removeAttribute("mypetlist");
			List<PetDTO> petList = ms.petList(member_id);
			hs.setAttribute("mypetlist", petList);
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
		} 
		model.addAttribute("member", member);
		return "mypage/user";
	}

}
