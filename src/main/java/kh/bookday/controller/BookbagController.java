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
	private BookbagService service;

	@Autowired
	private MemberService mservice;

	/* 책가방페이지 출력 */
	@RequestMapping("selectBookbagListById")
	public String selectBookbagListById(Model model) {

		String id = "수진";

		/* 책가방 리스트 출력 */
		List<BookbagDTO> list = service.selectBookbagListById(id);
		model.addAttribute("list", list);
		System.out.println("리스트 사이즈 확인 : " + list.size());

		/* 구독 여부 확인 */
		MemberDTO dto = mservice.selectMemberById(id);
		model.addAttribute("dto", dto);

		return "delivery/bookbag";
	}

	/* 담은 작품 삭제 */
	@RequestMapping("deleteBookbagBySeq")
	public String deleteBookbagBySeq(int bookbag_seq) {
		service.deleteBookbagBySeq(bookbag_seq);
		return "redirect:/delivery/selectBookbagListById";
	}

	/* 위시리스트 체크 */
	@ResponseBody
	@RequestMapping("selectWishlistByIdBisbn")
	public String selectWishlistByIdBisbn(String id, String b_isbn) {

		System.out.println(id);
		WishlistDTO dto = service.selectWishlistByIdBisbn(id, b_isbn);

		System.out.println("위시리스트 체크 결과 : " + dto);

		if(dto == null) { // 위시리스트에 담을 수 있는 상태
			return String.valueOf("true");
		}else { // 위시리스트에 이미 존재해서 담을 수 없는 상태
			return String.valueOf("false");
		}

	}

	/* 위시리스트 추가 */
	@RequestMapping("insertWishlist")
	public String insertWishlist(WishlistDTO dto) {

		service.insertWishlist(dto);
		System.out.println("위시리스트 추가 완료");

		return "redirect:/delivery/selectBookbagListById";
	}

	/* 회원 배송지 정보 입력 */
	@RequestMapping("updateMemberById")
	public String insertDestination(MemberDTO dto, Model model) {

		service.updateMemberById(dto);
		System.out.println("배송지 정보 입력 완료");
		model.addAttribute("dto", dto);
		System.out.println(dto);
		// 이거 여기 없어도 되는 거 같은데?

		return "redirect:/delivery/selectBookbagListById";
	}

	/* 결제페이지 */
	@RequestMapping("toPayment")
	public String toPayment() {
		return "delivery/payment";
	}
	
	/* 결제완료페이지 */
	@RequestMapping("toPaymentCompleted")
	public String toPaymentCompleted(String id) {
		
		/* 월 구독 회원 등록 */
		service.insertMonthSubMemberById(id);
		
		/* 회원 등급 변경 */
		service.updateMemberGradeById(id);
		
		System.out.println(id + "-> 월 구독 회원 등록 완료");
		
		return "delivery/paymentCompleted";
	}

	/* 대여완료페이지 */
	@RequestMapping("toRentalCompleted")
	public String toRentalCompleted() {
		return "delivery/rentalcompleted";
	}

	/* 배송지페이지 */
	@RequestMapping("toDestination")
	public String toDestination() {
		return "delivery/destination";
	}
	
	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
}
