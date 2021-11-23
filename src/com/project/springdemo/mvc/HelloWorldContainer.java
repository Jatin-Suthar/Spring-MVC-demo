package com.project.springdemo.mvc;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloWorldContainer {
	static HashMap<Character, String> hash = new HashMap<>();
	
	static {
		for(int i = 0 ; i < 26 ; i++) {
			hash.put((char) ('a'+i), "0"+String.valueOf((char)('a'+i+1))+String.valueOf(i));
		}
	}
	//need a controller method to show the initial HTML form
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}
	
	//need a controller method to process the HTML form
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
	}
	
	//new a controller method to read form data and add data to the model
	@RequestMapping("processFormVersion2")
	public String letsShoutDude(HttpServletRequest req, Model model) {
		//read the file from showForm
		String name = req.getParameter("studentname");
		//change the name to uppercase
		name = name.toUpperCase();
		//add some external message
		String result = "Hi! " + name;
		//put this data into model
		model.addAttribute("message", result);
		return "helloworld";
	}
	
	@RequestMapping("processFormVersion3")
	public String processFormVersion3(@RequestParam("studentname") String name, Model model) {
		//change the name to lowercase
		name = name.toLowerCase();
		HashMap<Character, Integer> map = new HashMap<>();
		for(int i = 0 ; i < name.length() ; i++) {
			map.put(name.charAt(i), map.getOrDefault(name.charAt(i), 0) + 1);
		}
		//add some external message
		System.out.println(map);
		//put this data into model
		StringBuilder str = new StringBuilder();
		for(int i = 0 ; i < name.length() ; i++) {
			if(name.charAt(i) != ' ') str.append(hash.get(name.charAt(i)));
		}
		model.addAttribute("hashcode", str.toString());
		model.addAttribute("message", map);
		return "helloworld";
	}
	
//	@RequestMapping("processFromVersion4")
//	public String processFromVersion4(@RequestParam("studentname") String name, Model model) {
//		//find the hashvalue for the name
//		StringBuilder str = new StringBuilder();
//		for(int i = 0 ; i < name.length() ; i++) {
//			str.append(hash.get(name.charAt(i)));
//		}
//		model.addAttribute("hashCode", str.toString());
//		return "checkhash";
//	}
}
