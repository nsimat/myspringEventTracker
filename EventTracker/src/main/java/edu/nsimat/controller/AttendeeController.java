package edu.nsimat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import edu.nsimat.model.Attendee;

@Controller
@SessionAttributes("attendee")
public class AttendeeController {

	@RequestMapping(value ="/attendee", method = RequestMethod.GET)
	public String displayAttendee(Model model){
		
		Attendee attendee = new Attendee();
		
		model.addAttribute("attendee", attendee);
		return "attendee";
		
	}
	
	@RequestMapping(value = "/attendee", method = RequestMethod.POST)
	public String processAttendee(@ModelAttribute("attendee") Attendee attendee) {
		
		System.out.println(attendee);
		
		return "redirect:index.html";
	}
}
