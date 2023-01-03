package com.multi.pet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PetController {
	@RequestMapping("/petsitter")
	public String petsitter() {
		return "petsitter";
	}
	@RequestMapping("/user")
	public String user() {
		return "user";
	}
	@RequestMapping("/pet")
	public String pet() {
		return "pet";
	}
}
