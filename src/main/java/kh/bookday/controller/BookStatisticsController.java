package kh.bookday.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.bookday.service.BookStatisticsService;
import kh.bookday.service.MemberService;

@Controller
@RequestMapping("bookstatistics")
public class BookStatisticsController {
	
	@Autowired
	private MemberService mservice;
	
	@Autowired
	private BookStatisticsService service;
	
	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
}
