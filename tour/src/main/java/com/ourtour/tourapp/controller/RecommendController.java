package com.ourtour.tourapp.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ourtour.tourapp.service.RecommendServiceImpl;

@Controller
public class RecommendController {
	
	@Autowired
	RecommendServiceImpl recommendService;

	@RequestMapping("/recommend.do")
	public ModelAndView recommendPlace(HttpServletRequest request, HttpServletResponse response) throws IOException, ParseException {
		request.setCharacterEncoding("UTF-8");
		
		String content = request.getParameter("content");
		String keyword = request.getParameter("keyword");
		Map<String, Map> items = recommendService.recommend(content, keyword);
		
		System.out.println(items);
		ModelAndView mav = new ModelAndView();
		mav.addObject("items",items);
		mav.setViewName("main/recommend");
		
		return mav;
	}
	
}
