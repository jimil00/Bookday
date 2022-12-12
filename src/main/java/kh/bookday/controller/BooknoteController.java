package kh.bookday.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("booknote")
public class BooknoteController {
	
	@RequestMapping("toBookshelves")
	public String toBookshelves() {
		return "/booknote/bookselves";
	}

}
