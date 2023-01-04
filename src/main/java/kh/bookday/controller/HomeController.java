package kh.bookday.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.bookday.dto.BookDTO;
import kh.bookday.dto.PostDTO;
import kh.bookday.service.BookService;
import kh.bookday.service.PostService;

@Controller
public class HomeController {
	
	@Autowired
	private BookService service;
	
	@Autowired
	private PostService pservice;
	
	@RequestMapping("/")
	public String home(Model model) {
		
		//베스트셀러 도서 출력 
		List<BookDTO> b_list =service.selectBestSeller();
		model.addAttribute("b_list", b_list);
		
		//스테디셀러 도서 출력 
		List<BookDTO> s_list =service.selectSteadySeller();
		model.addAttribute("s_list", s_list);
		
		//신간 도서 출력
		List<BookDTO> n_list =service.selectNewBooks();
		model.addAttribute("n_list", n_list);
	
		//인기 포스트 출력
		List<PostDTO> plist=pservice.selectPopularPost();
		model.addAttribute("plist", plist);
	
		return "home";
	}
	
	@RequestMapping("toCurrentTime")
	public String toCurrentTime(Model model) {
		
		return "currentTime";
	}
	
	
	@RequestMapping("error")
	public String error() {
		
		return "error";
		
	}
	
	
	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
}
