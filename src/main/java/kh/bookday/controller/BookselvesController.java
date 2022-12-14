package kh.bookday.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.bookday.service.BookselvesService;

@Controller
@RequestMapping("bookselves")
public class BookselvesController {
	// 대여, 위시리스트, 책장
	
	@Autowired
	private BookselvesService service;
	
	@RequestMapping("selectBookselves")
	public String selectBookselves(Model model) throws Exception{
		
		// 대여
//		List<RentalDTO> rlist = service.selectOnesRentalBooks();
//		model.addAttribute("rlist", rlist);
		
		// 위시리스트
//		List<WishlistDTO> wlist = service.selectOnesWishlistBooks();
//		model.addAttribute("wlist", wlist);
		
		// 책장
		// 한 사람이 쓴 POST, BOOKMARK 쓴 것 BookDTO에 모아서 리스트로 보여주면 되지 않을까
		// Posted,Marked Books
//		List<BookDTO> blist = service.selectOnesPMedBooks();
//		model.addAttribute("blist", blist);

		return "booknote/bookselves";
	}
	
	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}

}
