package kh.bookday.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.bookday.dto.BookbagDTO;
import kh.bookday.service.BookbagService;

@Controller
@RequestMapping("/delivery/")
public class BookbagController {

	@Autowired
	private BookbagService service;

	@RequestMapping("toBookbag")
	public String toBookbag(Model model) {

		String id = "지민";
		
		/* 책가방 리스트 출력 */
		List<BookbagDTO> list = service.selectById(id);
		model.addAttribute("list", list);

		System.out.println("리스트 사이즈 확인 : " + list.size());
		
		return "/delivery/bookbag";
	}

	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
}
