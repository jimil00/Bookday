package kh.bookday.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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

		String id = "수진";

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
	
	/* 위시리스트 체크 */
	@ResponseBody
	@RequestMapping("selectWishlistByIdBisbn")
	public String selectWishlistByIdBisbn(String id, String b_isbn) throws Exception{
		
		System.out.println(id);
		WishlistDTO result = bservice.selectWishlistByIdBisbn(id, b_isbn);
		
		System.out.println("위시리스트 체크 결과 : " + result);
		
		if(result==null) { // 위시리스트에 담을 수 있는 상태
			return String.valueOf("true");
		}else { // 위시리스트에 이미 존재해서 담을 수 없는 상태
			return String.valueOf("false");
		}
		
	}
	
	/* 위시리스트 추가 */
	@RequestMapping("insertWishlist")
	public String insertWishlist(WishlistDTO dto) throws Exception{
		
		int result = bservice.insertWishlist(dto);
		System.out.println("위시리스트 추가 완료");
		
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
