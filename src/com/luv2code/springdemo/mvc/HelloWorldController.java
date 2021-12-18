package com.luv2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/Hello")
public class HelloWorldController {
	
	//need a controller method to show initial form
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}
	
	
	
	//method to process the html form
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
	}
	
	//new controller method to read form data  
	//add data to the model
	@RequestMapping("/processFormVersionTwo")
	public String letsShoutDude(HttpServletRequest request, Model model ) {
		
		//read the request parameter from the html form
		String theName = request.getParameter("studentName");
		
		//convert the data to all caps
		
		theName = theName.toUpperCase();
		
		
		//create the message
		String result = "Yo" + theName;
		
		//add message to the model
		model.addAttribute("message",result);
		
		return "helloworld";
	}
	
	//new controller method to read form data  
	//add data to the model
	@RequestMapping("/processFormVersionThree")
	public String processFormVersionThree(@RequestParam("studentName") String theName, Model model ) {
		
				
		//convert the data to all caps
		
		theName = theName.toUpperCase();
		
		
		//create the message
		String result = "version3" + theName;
		
		//add message to the model
		model.addAttribute("message",result);
		
		return "helloworld";
	}
	
	
	
}
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
