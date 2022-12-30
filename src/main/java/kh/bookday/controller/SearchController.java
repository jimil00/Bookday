package kh.bookday.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/search/")
public class SearchController {

	@RequestMapping("toSearch")
	public String toSearch() {
		return "search";
	}
	
}
