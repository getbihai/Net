package com.jr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class HomeController {
	
	@RequestMapping("home")
    public String list(Model model) {
		return "home";
	}
	
	@RequestMapping("logout")
    public String logout(Model model) {
		return "logout";
	}

}
