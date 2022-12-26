package kh.bookday.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kh.bookday.dto.MemberDTO;
import kh.bookday.dto.PostDTO;
import kh.bookday.dto.RentalDTO;
import kh.bookday.dto.WishlistDTO;
import kh.bookday.service.MemberService;
import kh.bookday.service.PostService;
import kh.bookday.service.RentalService;
import kh.bookday.service.WishlistService;

@Controller
@RequestMapping("bookshelves")
public class BookshelvesController {
	// 대여, 위시리스트, 책장

	@Autowired
	private MemberService mservice;

	@Autowired
	private RentalService rservice;
	
	@Autowired
	private WishlistService wservice;
	
	@Autowired
	private PostService pservice;
	
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
		List<RentalDTO> rlist = rservice.selectRentalListById(id);
		model.addAttribute("rlist", rlist);

		// 위시리스트
		List<WishlistDTO> wlist = wservice.selectWishlistListById(id);
		model.addAttribute("wlist", wlist);

		// 책장
		// 한 사람이 쓴 POST 쓴 것 
		// Posted,Marked Books
		//		List<PostDTO> plist = service.selectPostListById(id);
		//		model.addAttribute("plist", plist);

		// 책장
		// 한 사람이 쓴 POST 쓴 것 
		// Posted,Marked Books
		List<PostDTO> plist = pservice.select20PostListById(id, 0);
		model.addAttribute("plist", plist);

		return "mybook/bookshelves";
	}

	@GetMapping("nextList")
	@ResponseBody
	public String nextList(int count) {
		String id = "zxcvzxcv";
		System.out.println(count);
		return new Gson().toJson(pservice.select20PostListById(id, count));
	}

	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}

}

