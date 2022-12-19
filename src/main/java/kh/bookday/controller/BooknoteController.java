package kh.bookday.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.bookday.dto.MemberDTO;
import kh.bookday.dto.PostDTO;
import kh.bookday.service.BooknoteService;
import kh.bookday.service.MemberService;

@Controller
@RequestMapping("booknote")
public class BooknoteController {
	
	@Autowired
	private MemberService mservice;
	
	@Autowired
	private BooknoteService service;
	
	@Autowired
	private HttpSession session;
	
	
	@RequestMapping("selectPostListById")
	public String selectPostListById(Model model) {
		// id session
//		String id = String.valueOf(session.getAttribute("loginID"));
		String id = "zxcvzxcv";
		
		MemberDTO dto = mservice.selectMemberById(id);
		model.addAttribute("dto", dto);
		
		List<PostDTO> list = service.selectPostListById(id);
		model.addAttribute("list", list);
		
		return "/mybook/booknote/selectpostlist";
	}
	
	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}

}
