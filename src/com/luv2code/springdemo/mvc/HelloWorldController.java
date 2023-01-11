package com.luv2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String shoutOut(HttpServletRequest req, Model model) {
		
		//read the request parameter from html form
		String theName = req.getParameter("studentName");
		
		// convert the data to upper case
		String result = theName.toUpperCase();
		
		//create the message
		result = "YO! "+result;
		
		// add the message to the form
		model.addAttribute("message", result);
		
		return "helloworld";
	}

}
