package com.codingdojo.thecode.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/")

public class HomeController {

	@RequestMapping("")

	public String index(){		

		return "home";
	}


	@RequestMapping("/congrats")

	public String process(@RequestParam(value="code") String code,RedirectAttributes attr){

		String bu = "bushido";


		if(code.toLowerCase().trim().equals(bu)){

			return "redirect:/code";

		}else{

			attr.addFlashAttribute("error","You must train harder!");

			return "redirect:/";

		}

	}


	@RequestMapping("/code")

	public String code(){

		return "code";

	}

}
