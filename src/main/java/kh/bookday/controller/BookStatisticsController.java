package kh.bookday.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kh.bookday.service.BookStatisticsService;
import kh.bookday.service.MemberService;

@Controller
@RequestMapping("bookstatistics")
public class BookStatisticsController {

	@Autowired
	private HttpSession session;

	@Autowired
	private MemberService mservice;

	@Autowired
	private BookStatisticsService service;


	@RequestMapping("toStatistics")
	public String toStatistics() {
		return "mybook/bookstatistics";
	}

	@ResponseBody
	@RequestMapping("selectBookCalbyId")
	public String selectBookCalbyId() {
		String id = String.valueOf(session.getAttribute("loginID"));

		return new Gson().toJson(service.selectPostListById(id));
	}


	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
	
	@RequestMapping("error")
	public String error() {
		return "error";
	}
}
