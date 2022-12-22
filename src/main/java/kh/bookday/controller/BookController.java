package kh.bookday.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kh.bookday.dto.BookDTO;
import kh.bookday.dto.ReviewDTO;
import kh.bookday.dto.ReviewLikeDTO;
import kh.bookday.service.BookService;

@Controller
@RequestMapping("/book/")
public class BookController {
	
	@Autowired
	BookService service;
	
	@RequestMapping("toBookinfo")
	public String toBookinfo() {
		return "/book/bookinfo";
	}
	//도서 정보 출력
	@RequestMapping("selectBookinfo")
	public String selectBookByIsbn(Model model, @RequestParam("b_isbn")String b_isbn) {
		
		BookDTO dto=service.selectBookByIsbn(b_isbn);
		model.addAttribute("dto",dto);
		
		return "book/bookinfo";
	}
	
	//리뷰 출력? 에이작스로도 많이 하는 듯
	@RequestMapping("selectReview")
	public String selectReviewByIsbn(Model model, @RequestParam("b_isbn")String b_isbn) {
		
		ReviewDTO dto=service.selectReviewByIsbn(b_isbn);
		model.addAttribute("dto",dto);
		
		return "book/bookinfo";
	}
	
	@RequestMapping("insertReview")
	public String insertReview(ReviewDTO dto) {
		
		service.insertReview(dto);
		
		return "redirect:book/bookinfo";
	}
	
	@RequestMapping("deleteReview")
	public String deleteReview(String b_isbn,String rv_writer_id) {
		
		service.deleteReview(b_isbn,rv_writer_id);
		
		return "book/bookinfo";
	}
	
	@RequestMapping("updateReview")
	public String updateReview(ReviewDTO dto) {
		
		service.updateReview(dto);
		
		return "book/bookinfo";
	}
	
	@RequestMapping("insertLikeCount")
	public String insertLikeCount(ReviewLikeDTO dto) {
		
		service.insertLikeCount(dto);
		
		return "book/bookinfo";
	}
	
	@RequestMapping("selectPostByIsbn")
	public String selectPostByIsbn(String b_isbn) {
		
		service.selectPostByIsbn(b_isbn);
		
		return "book/bookinfo";
	}
	
	
	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
	
}
