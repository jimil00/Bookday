package kh.bookday.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kh.bookday.dto.BookDTO;
import kh.bookday.dto.PostDTO;
import kh.bookday.dto.ReviewDTO;
import kh.bookday.dto.ReviewLikeDTO;
import kh.bookday.service.BookService;
import kh.bookday.service.PostService;
import kh.bookday.service.ReviewService;

@Controller
@RequestMapping("/book/")
public class BookController {
	
	@Autowired
	private BookService service;

	
	@Autowired
	private PostService pservice;
	
	
	@Autowired
	private ReviewService rservice;

	
	@Autowired
	private HttpSession session;
	
	// 책 검색 팝업
	@GetMapping("toBookSearchPop")
	public String toBookSearchPop(String searchWord, Model model) {
		System.out.println(searchWord);
		model.addAttribute("searchWord", searchWord);
		List<BookDTO> blist = service.selectBookListBySw(searchWord);
		model.addAttribute("blist", blist);
		
		return "mybook/booksearchpop";
	}
	
	
	//도서 정보 출력
	@RequestMapping("selectBookinfo") //@RequestParam("rv_seq") String rv_seq  @RequestParam(value="nowPage", required=false)String nowPage @RequestParam(value="cntPerPage", required=false)String cntPerPage
	public String selectBookByIsbn(Model model, String b_isbn) {
		
		//아마 상세 페이지로 가는 이동이 완성되면 포스트로 값을 받아서
		
		//도서 정보 출력
		BookDTO dto=service.selectBookByIsbn(b_isbn);
		model.addAttribute("dto",dto);
		
		//댓글 리스트 출력
		List<ReviewDTO> rlist=rservice.selectReviewByIsbn(b_isbn);
		model.addAttribute("rlist",rlist);
		
		String id=String.valueOf(session.getAttribute("loginID"));
		
		//좋아요 dto
		/*ReviewLikeDTO like = new ReviewLikeDTO(){};
		like.setRv_seq();
		like.setId(id);*/
		
		//유저에 따른 댓글 좋아요 list
		List<ReviewLikeDTO> rl_list=rservice.findReviewLike(id,b_isbn);
		model.addAttribute("rl_list",rl_list);
		

		//리뷰 페이징
//		int total = rservice.countReview();
//		System.out.println("total의 값: "+total);
//		
//		if(nowPage == null && cntPerPage == null) {
//			nowPage ="1";
//			cntPerPage="5";
//		}else if(nowPage == null) {
//			nowPage="1";
//		}else if(cntPerPage == null) {
//			cntPerPage="5";
//		}
//		
//		PagingDTO page = new PagingDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
//		System.out.println(page);
//		//페이징 끝
//		
//		List<PagingDTO> dtolist = rservice.seeboardService(dto);
//		List<PagingDTO> dtolist2 = rservice.selectReview(page);
//		mv.addObject("dtolist",dtolist2);
//		mv.setViewName("review");
//		return mv;
			
		//포스트 리스트 출력
		List<PostDTO> plist=pservice.selectPostByIsbn(b_isbn);
		model.addAttribute("plist",plist);

		return "book/bookinfo";
	}
	
	//리뷰 작성
	@RequestMapping("insertReview")
	public String insertReview(ReviewDTO dto, @RequestParam("b_isbn")String b_isbn) {
		
		dto.setRv_writer_id(String.valueOf(session.getAttribute("loginID")));
		dto.setRv_writer_nn(String.valueOf(session.getAttribute("nickname")));
		
		rservice.insertReview(dto);
		
		return "redirect:/book/selectBookinfo?b_isbn="+dto.getB_isbn();
	}
	
	//댓글 삭제
	@RequestMapping("deleteReview")
	public String deleteReview(String b_isbn, String rv_seq, String rv_writer_id) {
		
		rv_writer_id=String.valueOf(session.getAttribute("loginID"));
		
		System.out.println(rv_seq);
		rservice.deleteReview(b_isbn,rv_seq);
		
		return "redirect:/book/selectBookinfo?b_isbn="+b_isbn;
	}
	
	//댓글 수정
	@ResponseBody
	@RequestMapping("updateReview")
	public String updateReview(ReviewDTO dto) {
		
		dto.setRv_writer_id(String.valueOf(session.getAttribute("loginID")));
		
		rservice.updateReview(dto);
		
		System.out.println(dto.getRv_seq());
		System.out.println(dto.getRv_content());
		 
		return "true";
	}
	
//	//유저에 따른 좋아요 여부 확인
//	@ResponseBody
//	@RequestMapping("findReviewLike")
//	public String findReviewLike(String id, Object rv_seq) {
//		
//		String user=(String.valueOf(session.getAttribute("loginID")));
//		
////		rservice.findReviewLike(user,rv_seq);
//		
//		return String.valueOf(rservice.findReviewLike(user,rv_seq));
//	}
	
	
	//댓글 좋아요 누름
	@ResponseBody
	@RequestMapping("insertReviewLike")
	public String insertReviewLike(ReviewLikeDTO dto) {
		
		dto.setId(String.valueOf(session.getAttribute("loginID")));
		rservice.insertReviewLike(dto);
		System.out.println(dto);
		
		return "true";
	}
	
	//댓글 좋아요 삭제
	@ResponseBody
	@RequestMapping("deleteReviewLike")
	public String deleteReviewLike(String b_isbn, String rv_seq, String id) {
		
		rservice.deleteReviewLike(b_isbn,rv_seq,id);
		
		return "book/bookinfo";
	}
	
	//해당 도서에 대한 포스트 출력
	@RequestMapping("selectPostByIsbn")
	public String selectPostByIsbn(Model model,String b_isbn) {
		
		List<PostDTO> plist=pservice.selectPostByIsbn(b_isbn);
		model.addAttribute("plist",plist);
		
		return "book/bookinfo";
	}
	

	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
	
}
