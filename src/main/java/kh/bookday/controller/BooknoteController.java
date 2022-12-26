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
import kh.bookday.service.MemberService;
import kh.bookday.service.PostService;

@Controller
@RequestMapping("booknote")
public class BooknoteController {
	
	@Autowired
	private MemberService mservice;
	
	@Autowired
	private PostService service;
	
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
		
		return "mybook/booknote/selectpostlist";
	}
	
	@RequestMapping("insertPost")
	public String insertPost() {
		
		service.insertPost(new PostDTO(0, "zxcvzxcv", "9791191824001", "https://image.aladin.co.kr/product/27692/63/cover/k082733434_1.jpg", "지구 끝의 온실 :김초엽 장편소설 ", "지은이: 김초엽", "문학 > 한국문학 > 소설", "하하하", null, "제목이다하하하하하", "내용이다하하하하하", 0, 0, 0));
		return "mybook/booknote/selectpostlist";
	}
	
	@RequestMapping("toInsertPost")
	public String toInsertPost(Model model) {
		// id session
//		String id = String.valueOf(session.getAttribute("loginID"));
		String id = "zxcvzxcv";
		
		MemberDTO dto = mservice.selectMemberById(id);
		model.addAttribute("dto", dto);
		
		return "mybook/booknote/insertpost";
	}
	


	
	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}

}
