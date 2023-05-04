package com.ourtour.tourapp.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.backoff.BackOff;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.ourtour.tourapp.reply.ReplyDTO;
import com.ourtour.tourapp.reply.ReplyServiceImpl;

@Controller
public class BoardController {
	@Autowired
	FileUploadLogic uplo;
	@Autowired
	BoardService boardService;
	@Autowired
	ReplyServiceImpl replyService;
	
	@RequestMapping("/board")
	public String board() {
		return "board/list.do";
	}
	@RequestMapping("/board/read")
	public String read() {
		return "board/content";
	}
	
	@RequestMapping("/board/write")
	public String insertPage() {
		return "board/write"; // 게사판 작성 페이지
	}
	
	@RequestMapping("/board/insert.do")
	public ModelAndView insert(@ModelAttribute BoardDTO board, HttpSession session) throws IllegalStateException, IOException {
		System.out.println(board.getTitle());
		List<MultipartFile> files = board.getFiles();
		String path = WebUtils.getRealPath(session.getServletContext(), "/upload");
		//boardService.insert(board);
		List<BoardFileDTO> filedtolist = uplo.uploadFiles(files, path);
		int count = 1;
		for(BoardFileDTO bfdto:filedtolist) {
			bfdto.setImageFileno(count);
			count++;
		}
		boardService.insert(board,filedtolist);
		ModelAndView mav =new ModelAndView();
		if(board.getCategory().equals("자유게시판")) {
			mav.setViewName("board/boardFList");
			List<BoardDTO> boardlist= boardService.select();
			mav.addObject("boardlist", boardlist);
			return mav;
		}else if(board.getCategory().equals("후기게시판")) {
			mav.setViewName("board/boardRList");
			List<BoardDTO> boardlist= boardService.select1();
			mav.addObject("boardlist", boardlist);
			return mav;
		}else if(board.getCategory().equals("질문게시판")) {
			mav.setViewName("board/boardQList");
			List<BoardDTO> boardlist= boardService.select2();
			mav.addObject("boardlist", boardlist);
			return mav;
		}
		return mav;
	}
	@RequestMapping("/board/list.do")
	public ModelAndView list() {
		ModelAndView mav =new ModelAndView("board/boardFList");
		List<BoardDTO> boardlist= boardService.select();
		mav.addObject("boardlist", boardlist);
		return mav;
	}
	@RequestMapping("/board/list1.do")
	public ModelAndView list1() {
		ModelAndView mav =new ModelAndView("board/boardRList");
		List<BoardDTO> boardlist= boardService.select1();
		mav.addObject("boardlist", boardlist);
		return mav;
	}
	@RequestMapping("/board/list2.do")
	public ModelAndView list2() {
		ModelAndView mav =new ModelAndView("board/boardQList");
		List<BoardDTO> boardlist= boardService.select2();
		mav.addObject("boardlist", boardlist);
		return mav;
	}
	
	@RequestMapping("/board/read.do")
	public ModelAndView read(@RequestParam int boardNo,@RequestParam String state) {
		ModelAndView mav = new ModelAndView();
		// 서비스 메소드 호출
		BoardDTO board = boardService.read(boardNo);
		List<ReplyDTO> replylist = replyService.select(boardNo);
		List<BoardFileDTO> filelist = boardService.readFile(boardNo);
		System.out.println(board);
		mav.addObject("board",board);
		mav.addObject("replylist",replylist);
		mav.addObject("filelist",filelist);
		String view = "";
		if(state.equals("READ")) {
			view = "board/content"; // 게시글 자세히 보는 페이지
		}else {
			view = "board/content_update"; // 게시글 수정하는 페이지
		}
		mav.setViewName(view);
		return mav;
	}
	@RequestMapping("/board/delete.do")
	public String delete(@RequestParam int boardNo) {
		boardService.delete(boardNo);
		return "redirect:/board/list.do";
	}
	@RequestMapping("/board/update.do")
	public ModelAndView update(@ModelAttribute BoardUpdateDTO board) {
		System.out.println(board);
		boardService.update(board);
		
		ModelAndView mav = new ModelAndView("board/content");
		int boardNo = board.getBoardNo();
		BoardDTO new_board = boardService.read(boardNo);
		List<ReplyDTO> replylist = replyService.select(boardNo);
		List<BoardFileDTO> filelist = boardService.readFile(boardNo);
		mav.addObject("board",new_board);
		mav.addObject("replylist",replylist);
		mav.addObject("filelist",filelist);
		//return "main/index"; // default : forward
		return mav; // 게시판
	}
}
