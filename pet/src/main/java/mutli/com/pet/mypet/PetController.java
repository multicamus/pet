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

@Controller
@RequestMapping("/mypet")
public class PetController {
	PetService ps;
	MemberService ms;
	FileUploadLogic2 fileuploadService;

	@Autowired
	public PetController(PetService ps, MemberService ms, FileUploadLogic2 fileuploadService) {
		super();
		this.ps = ps;
		this.ms = ms;
		this.fileuploadService = fileuploadService;

	}

	// read
	@RequestMapping(value = "/read.do")
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
	@RequestMapping(value = "/update.do")
	public String update(PetDTO pet, String member_id, HttpServletRequest hsr, Model model) {
		int result = ps.update(pet);

		if (result == 1) {
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
	@RequestMapping(value = "/delete.do")
	public String delete(String pet_id, String member_id, HttpServletRequest hsr, Model model) {
		int result = ps.delete(pet_id);
		MemberDTO member = ms.member_read(member_id);

		if (result == 1) {
			HttpSession hs = hsr.getSession();
			hs.removeAttribute("mypetlist");
			List<PetDTO> petList = ms.petList(member_id);
			hs.setAttribute("mypetlist", petList);
			System.out.println("#######"+petList);
		} 
		
		model.addAttribute("member", member);
		return "mypage/user";
	}

//		파일 insert 
//		@RequestMapping(value = "/fileinsert.do", method = RequestMethod.POST)
//		public String fileinsert2(PetDTO pet,HttpSession session,Model model, String pet_id, String member_id, HttpServletRequest hsr) throws IllegalStateException, IOException{
//			int result = ps.insert(pet);
//			if(result == 1) {
//				HttpSession hs = hsr.getSession();
//				hs.removeAttribute("mypetlist");
//				
//				List<PetDTO> petList = ms.petList(member_id);
//				System.out.println(petList);
//				hs.setAttribute("mypetlist", petList);
//			}
//			
//			MultipartFile file = pet.getPet_photo();
//			String path =
//					WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/upload");
//			PetFileDTO petfiled =  fileuploadService.uploadFile(file, path);
//			ps.insertfile(pet,petfiled);
//			return "redirect:/mypet/read.do";
//		}

	// 1. 메소드 구성해서 매개변수로 전달되는 PetDTO sysout으로 출력하기
	// 2. 파일업로드 처리 후 리턴되는 값을 출력해보고 파일업로드가 되는지 체크하기
	// 업로드되는 파일명을 추출해서 업로드 후 파일명을 pet_photo에 저장하기
	// 업로드 파일명이 pet객체에 추가되면 db에 insert - pet만 insert하도록 변경하
	// fileuploadService.uploadFile도 수정
	// 기존꺼는 ArrayList에 저장되도록 처리가 되어 있는데 지금은 업로드 하고 그냥 업로드된 파일명만 받아오기
	@RequestMapping(value = "/fileinsert.do", method = RequestMethod.POST)
	public String fileinsert2(PetDTO pet, HttpSession session) throws IllegalStateException, IOException {

		MultipartFile file = pet.getPet_photo_file();
//		String path = WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/upload");
		String path = "C:/Users/stark/git/pet/pet/src/main/webapp/resources/pet_profile";
		System.out.println("path : " + path);
		System.out.println("PetController PetDTO : " + pet);
		
		PetFileDTO petfiled = fileuploadService.uploadFile(file, path);
		
		// 1. PetFileDTO의 getOriginalFilename()을 호출해서 PetDTO의 pet_photo에 셋팅
		String storedName = petfiled.getStoreFilename();
		pet.setPet_photo(storedName);
		System.out.println("PetController PetFileDTO : " + pet);
		
		// 2. PetDTO 를 Service의 insert호출하며 전달
		// => 만약에 구현이 안된 경우 서비스->DAO구현 후 호출
		ps.insert(pet);
		
		return "mypage/pet";
	}
}
