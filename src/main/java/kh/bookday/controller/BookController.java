package kh.bookday.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.bookday.dto.BookDTO;
import kh.bookday.service.BookService;

@Controller
@RequestMapping("/book/")
public class BookController {
	
	@Autowired
	private BookService service;
	
	@RequestMapping("toBookinfo")
	public String toBookinfo() {
		return "/book/bookinfo";
	}
	
	@GetMapping("toBookSearchPop")
	public String toBookSearchPop(String searchWord, Model model) {
		System.out.println(searchWord);
		model.addAttribute("searchWord", searchWord);
		List<BookDTO> blist = service.selectBookListBySw(searchWord);
		model.addAttribute("blist", blist);
		
		return "mybook/booksearchpop";
	}
	
	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
	
}
