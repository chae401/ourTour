package com.ourtour.tourapp.reply;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReplyController {
	@Autowired
	ReplyServiceImpl service;
	
	@RequestMapping("/reply/insert.do")
	public String insert(@ModelAttribute ReplyDTO reply) {
		service.insert(reply);
		return "redirect:/board/read.do?boardNo=" + reply.getBoardNo()+"&state=READ";// 해당 게시글 페이지
	}
}
