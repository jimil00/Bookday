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
import kh.bookday.dto.RentalDTO;
import kh.bookday.dto.WishlistDTO;
import kh.bookday.service.BookshelvesService;
import kh.bookday.service.MemberService;

@Controller
@RequestMapping("bookshelves")
public class BookshelvesController {
	// 대여, 위시리스트, 책장
	
	@Autowired
	private MemberService mservice;
	
	@Autowired
	private BookshelvesService service;
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping("selectBookshelvesListById")
	public String selectBookshelvesListById(Model model) throws Exception{
		// id session
//		String id = String.valueOf(session.getAttribute("loginID"));
		String id = "zxcvzxcv";
		
		MemberDTO dto = mservice.selectMemberById(id);
		model.addAttribute("dto", dto);
		
		// 대여
		List<RentalDTO> rlist = service.selectRentalListById(id);
		model.addAttribute("rlist", rlist);
		
		// 위시리스트
		List<WishlistDTO> wlist = service.selectWishlistListById(id);
		model.addAttribute("wlist", wlist);
		
		// 책장
		// 한 사람이 쓴 POST 쓴 것 
		// Posted,Marked Books
		List<PostDTO> plist = service.selectPostListById(id);
		model.addAttribute("plist", plist);

		return "mybook/bookshelves";
	}
	
	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}

}

