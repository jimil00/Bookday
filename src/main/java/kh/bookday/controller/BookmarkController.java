package kh.bookday.controller;

import java.util.List;

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
	
	@RequestMapping("selectBookmark")
	public String selectBookmark(Model model) throws Exception{
		// 대여
		String id = "zxcvzxcv";
		MemberDTO dto = mservice.selectMemInfo(id);
		model.addAttribute("dto", dto);
		
		List<BookmarkDTO> list = service.selectOnesBookmark(id);
		model.addAttribute("list", list);
		
		return "mybooks/bookmark";
	}
	
	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
}
