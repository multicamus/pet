package mutli.com.pet.mypet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypet")
public class PetController {
	PetService service;
	
	@Autowired
	public PetController(PetService service) {
		super();
		this.service = service;
	}

	// insert
	@RequestMapping(value="/insert.do")
	public String insert(PetDTO pet, Model model) {
		int result = service.insert(pet);
		System.out.println(pet);
		System.out.println(result);
		return "mypage/pet";
	}

	// read
	@RequestMapping(value="/read.do")
	public String read(String pet_id, String state, Model model) {
		PetDTO pet = service.read(pet_id);
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
	public String update(PetDTO pet) {
		service.update(pet);
		return "mypage/pet";
	}
	
	// delete
	@RequestMapping(value="/delete.do")
	public String delete(String pet_id) {
		service.delete(pet_id);
		return "mypage/user";
	}

}
