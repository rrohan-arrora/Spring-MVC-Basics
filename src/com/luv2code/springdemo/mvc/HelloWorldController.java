package com.luv2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloWorldController {
	
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
	}
	
	// add method to handle the http request
	// add data to the model
	@RequestMapping("/processFormVersion2")
	public String shoutOut(@RequestParam("studentName") String theName, Model model) {
				
		// convert the data to upper case
		String result = theName.toUpperCase();
		
		//create the message
		result = "HELLO BABY! "+result;
		
		// add the message to the form
		model.addAttribute("message", result);
		
		return "helloworld";
	}

}
