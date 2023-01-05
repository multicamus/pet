package multi.com.pet.resv;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ResvController {
	

	@RequestMapping("/reserve/resv1_mb.do")
	public String resv1(ResvDTO resvdto, String servicecode, String pet_list, Model model) {
		System.out.println("resv1컨트롤러");
		System.out.println(resvdto);
		System.out.println(servicecode);
		
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
		
		String[] genderArr = gender.split(",");
		String[] sizeArr = size.split(",");
		resvdto.setMatch_method(method);
		if(method.equals("direct_match")) {
			resvdto.setPrefer_gender(genderArr[0]);
			resvdto.setPrefer_size(sizeArr[0]);
		}else if(method.equals("auto-match")) {
			resvdto.setPrefer_gender(genderArr[1]);
			resvdto.setPrefer_size(sizeArr[1]);
		}else {
			resvdto.setPrefer_gender(null);
			resvdto.setPrefer_size(null);
		}
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
	
	
}
