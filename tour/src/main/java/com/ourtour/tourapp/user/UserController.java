package com.ourtour.tourapp.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class UserController {
	@Autowired
	UserServiceImpl userService;
		
	@RequestMapping("/view/login")
	public String login() {
		return "views/index";
	}
	
	@RequestMapping("/login.do")
    public ModelAndView login(@RequestParam String id,@RequestParam String pass, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        System.out.println(id + " " + pass);
        
        UserDTO user = userService.login(id,pass);
        String view = "";
        
        if(user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("loginUser", user);
            view = "views/index";
        }else {
            view = "views/loginpage/loginfail";
        }
        mav.setViewName(view);
        return mav;
    }
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		if(session != null) {
			session.invalidate();
		}
		return "redirect: view/login";
	}
	
	@RequestMapping("/signup.do")
	public String signup() {
		return "views/loginpage/loginpage";
	}
	
	@RequestMapping("/update.do")
	public String update(UserDTO user, HttpSession session) {
	    userService.update(user);
	    session.setAttribute("loginUser", user);
	    return "redirect:/view/profile";
	}

	@RequestMapping("/view/profile")
	public ModelAndView profile(HttpSession session) {
	    ModelAndView mav = new ModelAndView("views/loginpage/profile");
	    UserDTO user = (UserDTO) session.getAttribute("loginUser");	
	    mav.addObject("loginUser", user);
	    return mav;
	}

	
	@RequestMapping("/insert.do")
	public String insert(UserDTO user) {
	    try {
	        userService.insert(user);
	        return "views/loginpage/loginpage1";
	    } catch (Exception e) {
	        return "views/loginpage/loginfail2";
	    }
	}

}
