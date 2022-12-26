package kh.bookday.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kh.bookday.dto.BookDTO;
import kh.bookday.dto.PostDTO;
import kh.bookday.dto.ReviewDTO;
import kh.bookday.dto.ReviewLikeDTO;
import kh.bookday.service.BookService;

@Controller
@RequestMapping("/book/")
public class BookController {
	
	@Autowired
	BookService service;
	
	@Autowired
	private HttpSession session;
	
//	@RequestMapping("toBookinfo")
//	public String toBookinfo() {
//		return "/book/bookinfo";
//	}
	
	//도서 정보 출력
	@RequestMapping("selectBookinfo")
	public String selectBookByIsbn(Model model, String b_isbn) {
		
		//도서 정보 출력
		BookDTO dto=service.selectBookByIsbn(b_isbn);
		model.addAttribute("dto",dto);
		
		//댓글 리스트 출력
		List<ReviewDTO> rlist=service.selectReviewByIsbn(b_isbn);
		model.addAttribute("rlist",rlist);
		
		//댓글 좋아요 여부 출력
		//service.findReviewLike(b_isbn, b_isbn, b_isbn);
		
		//포스트 리스트 출력
		List<PostDTO> plist=service.selectPostByIsbn(b_isbn);
		model.addAttribute("plist",plist);

		return "book/bookinfo";
	}
	

	@RequestMapping("insertReview")
	public String insertReview(ReviewDTO dto, @RequestParam("b_isbn")String b_isbn) {
		
		dto.setRv_writer_id(String.valueOf(session.getAttribute("loginID")));
		dto.setRv_writer_nn(String.valueOf(session.getAttribute("nickname")));
		
		service.insertReview(dto);
		
		return "redirect:/book/selectBookinfo?b_isbn="+dto.getB_isbn();
	}
	
	//댓글 삭제
	@RequestMapping("deleteReview")
	public String deleteReview(String b_isbn, String rv_seq, String rv_writer_id) {
		
		rv_writer_id=String.valueOf(session.getAttribute("loginID"));
		
		System.out.println(rv_seq);
		service.deleteReview(b_isbn,rv_seq);
		
		return "redirect:/book/selectBookinfo?b_isbn="+b_isbn;
	}
	
	//댓글 수정
	@ResponseBody
	@RequestMapping("updateReview")
	public String updateReview(ReviewDTO dto) {
		
		dto.setRv_writer_id(String.valueOf(session.getAttribute("loginID")));
		
		service.updateReview(dto);
		
		System.out.println(dto.getRv_seq());
		System.out.println(dto.getRv_content());
		
		//return "redirect:/book/selectBookinfo?b_isbn="+dto.getB_isbn(); 
		return "true";
	}
	
	//댓글 좋아요 누름
	@ResponseBody
	@RequestMapping("insertReviewLike")
	public String insertReviewLike(ReviewLikeDTO dto) {
		
		service.insertReviewLike(dto);
		
		return "book/bookinfo";
	}
	
	@ResponseBody
	@RequestMapping("deleteReviewLike")
	public String deleteReviewLike(String b_isbn, String rv_seq, String id) {
		
		service.deleteReviewLike(b_isbn,rv_seq,id);
		
		return "book/bookinfo";
	}
	
	
	@RequestMapping("selectPostByIsbn")
	public String selectPostByIsbn(Model model,String b_isbn) {
		
		List<PostDTO> plist=service.selectPostByIsbn(b_isbn);
		model.addAttribute("plist",plist);
		
		return "book/bookinfo";
	}
	
	
	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
	
}
