package edu.nsimat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
	
	@RequestMapping(value = "/greeting")
	public String sayHello(Model model) {
		
		model.addAttribute("greeting", "Hello World!");
		System.out.println("I am here in sayHello.");
		return "hello";
	}

}
