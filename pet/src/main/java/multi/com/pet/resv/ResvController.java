package multi.com.pet.resv;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import mutli.com.pet.erp.LoginUserDTO;
import mutli.com.pet.erp.SitterDTO;

@Controller
public class ResvController {
	ResvService service;
	
	@Autowired
	public ResvController(ResvService service) {
		super();
		this.service = service;
	}
	
	@RequestMapping("/reserve/resv1_mb.do")
	public String resv1(ResvDTO resvdto, String servicecode, String pet_list, String pet_codelist, Model model) {
		System.out.println("resv1컨트롤러");
		System.out.println(resvdto);
		System.out.println(servicecode);
		System.out.println(pet_list);

		
		//나열된 servicecode의 문자열을 ","를 기준으로 split
		String[] servicecodeArr = servicecode.split(",");
		for(int i=0;i<servicecodeArr.length;i++) {
			if(servicecodeArr[i].equals("bath_service")) {
				resvdto.setBath_service('Y');
			}
			if(servicecodeArr[i].equals("walk_service")) {
				resvdto.setWalk_service('Y');
			}
			if(servicecodeArr[i].equals("beauty_service")) {
				resvdto.setBeauty_service('Y');
			}
			
		}
		
		//시작시간+서비스시간 = 종료시간 설정
		int endtime= resvdto.getService_starttime()+resvdto.getService_time();
		resvdto.setService_endtime(endtime);
		
		
		//pet_list에 pet1이 포함되어있으면 pet1_reserved = "Y" 아니면 "N"
		if(pet_list.contains("pet1")) {
			resvdto.setPet1_reserved("Y");
		}else {
			resvdto.setPet1_reserved("N");
		}
		
		//pet_list에 pet2이 포함되어있으면 pet2_reserved = "Y" 아니면 "N"		
		if(pet_list.contains("pet2")) {
			resvdto.setPet2_reserved("Y");
		}else {
			resvdto.setPet2_reserved("N");
		}

		//pet_list에 pet3이 포함되어있으면 pet3_reserved = "Y" 아니면 "N"
		if(pet_list.contains("pet3")) {
			resvdto.setPet3_reserved("Y");
		}else {
			resvdto.setPet3_reserved("N");
		}
		
		//pet_list에 DOG, CAT 둘다 포함이 되어있으면
		if(pet_list.contains("CAT")&&pet_list.contains("DOG")) {
			model.addAttribute("pet_codelist", "A");
		}else if(pet_list.contains("CAT")) {
			model.addAttribute("pet_codelist", "C");
		}else {
			model.addAttribute("pet_codelist", "D");
		}
		
		
		System.out.println(resvdto);
		
		//resvdto를 가지고 지정뷰로 이동
		model.addAttribute("resvdto", resvdto);
		return "resv/resv_2";
	}

	
	@RequestMapping("/reserve/resv2_mb.do")
	public String resv2(ResvDTO resvdto, Model model) {
		System.out.println("컨트롤러");
		System.out.println(resvdto);
		String gender = resvdto.getPrefer_gender(); //선호 성별
		String size= resvdto.getPrefer_size(); //선호 사이즈
		String method = resvdto.getMatch_method(); //선호 방법
		
		System.out.println(gender);
		System.out.println(size);
		System.out.println(method);
		

		
		System.out.println(resvdto);
		model.addAttribute("resvdto", resvdto);
		return "resv/resv_3";
	}
	
	@RequestMapping("/reserve/resv3_mb.do")
	public String resv3(ResvDTO resvdto, Model model) {
		System.out.println("컨트롤러3");
		System.out.println(resvdto);

		model.addAttribute("resvdto", resvdto);
		return "resv/resvmb_list";
	}
	
	@RequestMapping(value="/sitter/ajax/list.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public List<SitterDTO> directlist(String gender, String size, String code, HttpSession session){
		System.out.println(gender);
		System.out.println(size);
		System.out.println(code);
		
		LoginUserDTO user =  (LoginUserDTO) session.getAttribute("user");
		user.setMember_shortAddr(""); //user의 주소를 간략한 주소로 바꾼다(예: 서울광역시 금천구)
		String shortAddr = user.getMember_shortAddr();
		
		System.out.println(shortAddr);
		
		List<SitterDTO> sitterlist =  service.directlist(gender, size, code, shortAddr);
		//불러온 시터중에서 관리자가 포함되어 있다면 빼기
		for(int i=0;i<sitterlist.size();i++) {
			if(sitterlist.get(i).getSitter_id().equals("admin")) {
				sitterlist.remove(sitterlist.get(i));
			}
		}
		
		System.out.println(sitterlist);
		
		return sitterlist;
	}
	
	@RequestMapping(value="/sitter/ajax/read.do", produces="application/json;charset=utf-8")
	@ResponseBody
	SitterDTO readSitter(String sitter_id) {
		System.out.println(sitter_id);
		
		SitterDTO sitter = service.readSitter(sitter_id);
		sitter.setSitter_age(0);
		sitter.setSitter_shortAddr("");
		
		System.out.println(sitter.getSitter_age());
		System.out.println(sitter.getSitter_shortAddr());
		System.out.println(sitter);
		
		return sitter;
	}
	
	
}
