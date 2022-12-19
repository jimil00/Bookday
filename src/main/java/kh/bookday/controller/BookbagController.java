package kh.bookday.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.bookday.dto.BookbagDTO;
import kh.bookday.dto.MemberDTO;
import kh.bookday.dto.WishlistDTO;
import kh.bookday.service.BookbagService;
import kh.bookday.service.MemberService;

@Controller
@RequestMapping("/delivery/")
public class BookbagController {

	@Autowired
	private BookbagService bservice;

	@Autowired
	private MemberService mservice;

	/* 책가방페이지 출력 */
	@RequestMapping("selectBookbagListById")
	public String selectBookbagListById(Model model) throws Exception{

		String id = "지민";

		/* 책가방 리스트 출력 */
		List<BookbagDTO> list = bservice.selectBookbagListById(id);
		model.addAttribute("list", list);
		System.out.println("리스트 사이즈 확인 : " + list.size());

		/* 구독 여부 확인 */
		MemberDTO dto = mservice.selectMemberById(id);
		model.addAttribute("dto", dto);

		return "/delivery/bookbag";
	}

	/* 담은 작품 삭제 */
	@RequestMapping("deleteBookbagBySeq")
	public String deleteBookbagBySeq(int bookbag_seq) throws Exception{
		int result = bservice.deleteBookbagBySeq(bookbag_seq);
		return "redirect:/delivery/selectBookbagListById";
	}
	
	/* 위시리스트 조회 */
	
	
	/* 위시리스트 추가 */
	@RequestMapping("insertWishlist")
	public String insertWishlist(HttpServletRequest request, WishlistDTO dto) throws Exception{
		String b_title = request.getParameter("b_title");
		System.out.println(b_title);
		
		int result = bservice.insertWishlist(dto);
		System.out.println("위시리스트 추가 완료");
		System.out.println(result);
		
		return "redirect:/delivery/selectBookbagListById";
	}

	/* 결제페이지 */
	@RequestMapping("topayment")
	public String topayment() throws Exception{
		return "/delivery/payment";
	}

	/* 대여완료페이지 */
	@RequestMapping("toRentalCompleted")
	public String toRentalCompleted() throws Exception{
		return "/delivery/rentalcompleted";
	}

	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
}
