package mutli.com.pet.mypet;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.WebUtils;

import mutli.com.pet.erp.MemberDTO;
import mutli.com.pet.erp.MemberService;
import mutli.com.pet.review.FileUploadLogic;
import mutli.com.pet.review.ReviewDTO;
import mutli.com.pet.review.ReviewFileDTO;

@Controller
@RequestMapping("/mypet")
public class PetController {
	PetService ps;
	MemberService ms;
	FileUploadLogic2 fileuploadService;
	
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
			System.out.println(petList);
			hs.setAttribute("mypetlist", petList);
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
			System.out.println(petList);
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
	
	
		//파일 insert
		@RequestMapping(value = "/fileinsert.do", method = RequestMethod.POST)
		public String fileinsert2(PetDTO pet,HttpSession session,Model model, String pet_id, String member_id, HttpServletRequest hsr) throws IllegalStateException, IOException{
			int result = ps.insert(pet);
			if(result == 1) {
				HttpSession hs = hsr.getSession();
				hs.removeAttribute("mypetlist");
				
				List<PetDTO> petList = ms.petList(member_id);
				System.out.println(petList);
				hs.setAttribute("mypetlist", petList);
			}
			
			MultipartFile file = pet.getPet_photo();
			String path =
					WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/upload");
			PetFileDTO petfiled =  fileuploadService.uploadFile(file, path);
			ps.insertfile(petfiled);
			return "redirect:/mypet/read.do";
		}
}
