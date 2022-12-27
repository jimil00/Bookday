package kh.bookday.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
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
	public String selectBookmarListkById(Model model) {
		
		// id session
//		String id = String.valueOf(session.getAttribute("loginID"));
		String id = "zxcvzxcv";
		
		MemberDTO dto = mservice.selectMemberById(id);
		model.addAttribute("dto", dto);
		
		List<BookmarkDTO> list = service.selectBookmarkListById(id);
		model.addAttribute("list", list);
		
		return "mybook/bookmark";
	}
	
	@GetMapping("selectBookmarkListBySw")
	public String selectBookmarkListBySw(String searchWord, Model model) {
		
		// id session
//		String id = String.valueOf(session.getAttribute("loginID"));
		String id = "zxcvzxcv";
		
		MemberDTO dto = mservice.selectMemberById(id);
		model.addAttribute("dto", dto);
		
		model.addAttribute("searchWord", searchWord);
		
		List<BookmarkDTO> list = service.selectBookmarkListBySw(searchWord);
		model.addAttribute("list", list);
		
		return "mybook/bookmark";
		
	}
	@GetMapping("deleteBookmarkBySeq")
	public String deleteBookmarkBySeq(int bm_seq, String bm_writer_id) {
//		String id = String.valueOf(session.getAttribute("loginID"));
		String id = "zxcvzxcv";
		System.out.println(bm_seq);
		System.out.println(bm_writer_id);
		if(id.equals(bm_writer_id)) {
			System.out.println("here");
		service.deleteBookmarkBySeq(bm_seq);
		
		return "redirect:/bookmark/selectBookmarkListById";
		}else {
			return "error";
		}
	}
	
	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
}
