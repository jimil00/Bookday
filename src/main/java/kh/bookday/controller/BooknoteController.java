package kh.bookday.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.bookday.dto.BookDTO;
import kh.bookday.service.BooknoteService;

@Controller
@RequestMapping("booknote")
public class BooknoteController {
	
	@Autowired
	private BooknoteService service;
	
//	@RequestMapping("toBookshelves")
//	public String toBookshelves() {
//		return "/booknote/bookselves";
//	}
	


}
