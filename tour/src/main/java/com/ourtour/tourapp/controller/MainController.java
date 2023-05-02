package com.ourtour.tourapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping("/main.do")
	public String main() {
		return "views/index";
	}
	@RequestMapping("/recommend")
	public String recommend() {
		return "main/recommend";
	}
	@RequestMapping("/login.do")
	public String login() {
		return "main/recommend";
	}
}
