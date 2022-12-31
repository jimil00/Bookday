package kh.bookday.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.bookday.dto.BookDTO;
import kh.bookday.dto.PostDTO;
import kh.bookday.service.BookService;
import kh.bookday.service.PostService;

@Controller
@RequestMapping("/search/")
public class SearchController {
	
	@Autowired
	private BookService service;
	
	@Autowired
	private PostService pservice;

	/* 검색페이지로 이동 */
	@RequestMapping("toSearch")
	public String toSearch(String searchWord, Model model) {
		
		System.out.println(searchWord);
		model.addAttribute("searchWord", searchWord);
		
		// 책 출력
		List<BookDTO> blist = service.selectBookListBySw(searchWord);
		model.addAttribute("blist", blist);
		System.out.println(blist.size());
		
		// 포스트 출력
		List<PostDTO> plist = pservice.selectPostListBySw(searchWord);
		System.out.println(plist.size());
		model.addAttribute("plist", plist);
		
		return "search";
	}
	
	
	
}
