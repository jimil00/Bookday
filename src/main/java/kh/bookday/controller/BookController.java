package kh.bookday.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/book/")
public class BookController {
	
	@RequestMapping("toBookinfo")
	public String toBookinfo() {
		return "/book/bookinfo";
	}
	
}
