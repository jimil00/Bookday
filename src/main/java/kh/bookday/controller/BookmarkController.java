package kh.bookday.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.bookday.dto.BookmarkDTO;
import kh.bookday.dto.MemberDTO;
import kh.bookday.service.BookmarkService;
import kh.bookday.service.MemberService;

@Controller
@RequestMapping("bookmark")
public class BookmarkController {
	
	@Autowired
	private MemberService mservice;
	
	@Autowired
	private BookmarkService service;
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping("selectBookmarkListById")
	public String selectBookmarListkById(Model model) throws Exception{
		
		// id session
//		String id = String.valueOf(session.getAttribute("loginID"));
		String id = "zxcvzxcv";
		
		MemberDTO dto = mservice.selectMemberById(id);
		model.addAttribute("dto", dto);
		
		List<BookmarkDTO> list = service.selectBookmarkListById(id);
		model.addAttribute("list", list);
		
		return "mybook/bookmark";
	}
	
	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
}
