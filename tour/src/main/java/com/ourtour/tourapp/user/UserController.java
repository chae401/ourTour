package com.ourtour.tourapp.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	@Autowired
	UserServiceImpl userService;
	@RequestMapping("/view/register")
	public String showPage() {
		return "user/register";
	}
	@RequestMapping("/view/login")
	public String login() {
		return "user/loginForm";
	}
	@RequestMapping("/login.do")
	public ModelAndView login(@RequestParam String id,@RequestParam String pass, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		System.out.println(id+" "+ pass);
		UserDTO user = userService.login(id,pass);
		String view = "";
		if(user!=null) {
			// �α��� ����
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", user);
			view = "views/index";
		}else {
			// �α��� ����
			view = "redirect:/view/login";
		}
		mav.setViewName(view);
		return mav;
	}
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		if(session!=null) {
			session.invalidate();
		}
		return "redirect:/view/login";
	}
}
