package kh.bookday.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kh.bookday.dto.BookbagDTO;
import kh.bookday.dto.MemberDTO;
import kh.bookday.dto.MonthSubMemberDTO;
import kh.bookday.dto.WishlistDTO;
import kh.bookday.service.BookbagService;
import kh.bookday.service.MemberService;
import kh.bookday.service.WishlistService;

@Controller
@RequestMapping("/delivery/")
public class BookbagController {

	@Autowired
	private BookbagService service;

	@Autowired
	private MemberService mservice;
	
	@Autowired
	private WishlistService wservice;
	
	@Autowired
	private HttpSession session;
	
	

	String id = "2584859670";

	/* 책가방페이지 출력 */
	@RequestMapping("selectBookbagListById")
	public String selectBookbagListById(Model model) {

		/* 책가방 리스트 출력 */
		List<BookbagDTO> list = service.selectBookbagListById(id);
		model.addAttribute("list", list);
		System.out.println("리스트 사이즈 확인 : " + list.size());

		/* 회원 정보 조회 (구독 여부 확인 & 배송지 정보 출력) */
		MemberDTO dto = mservice.selectMemberById(id);
		model.addAttribute("dto", dto);

		/* 월 구독 회원 정보 조회 (남은 배송 횟수, 남은 대여 권수 출력) */
		MonthSubMemberDTO sdto = mservice.selectMonthSubMemberById(id);
		model.addAttribute("sdto", sdto);

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

		WishlistDTO dto = wservice.selectWishlistByIdBisbn(id, b_isbn);
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
		
		wservice.insertWishlist(dto);
		System.out.println("위시리스트 추가 완료");


		return "redirect:/delivery/selectBookbagListById";
	}

	/* 배송지 페이지로 이동 */
	@RequestMapping("toAddressInput")
	public String toAddressInput() {
		return "delivery/addressinput";
	}

	/* 회원 배송지 정보 입력 */
	@RequestMapping("updateMemberAddressById")
	public String updateMemberAddressById(MemberDTO dto) {

		mservice.updateMemberAddressById(dto);
		System.out.println("배송지 정보 입력 완료");

		return "redirect:/delivery/selectBookbagListById";
	}

	/* 결제 페이지로 이동 */
	@RequestMapping("toPayment")
	public String toPayment(Model model) {

		/* 회원 정보 조회 (구독 여부 확인) */
		MemberDTO dto = mservice.selectMemberById(id);
		model.addAttribute("dto", dto);

		return "delivery/payment";
	}

	/* 결제완료 페이지로 이동 */
	@RequestMapping("toPaymentCompleted")
	public String toPaymentCompleted(String id, Model model) {

		/* 월 구독 회원 등록 */
		mservice.insertMonthSubMemberById(id);

		/* 회원 등급 변경 */
		mservice.updateMemberGradeById(id);

		System.out.println(id + "-> 월 구독 회원 등록 완료");

		/* 월 구독 회원 정보 조회 (구독기간 출력) */
		MonthSubMemberDTO sdto = mservice.selectMonthSubMemberById(id);
		model.addAttribute("sdto", sdto);

		return "delivery/paymentCompleted";
	}

	/* 대여완료 페이지로 이동 */
	@RequestMapping("toRentalCompleted")
	public String toRentalCompleted(Model model) {

		/* 회원 정보 조회 (배송지 정보 출력) */
		MemberDTO dto = mservice.selectMemberById(id);
		model.addAttribute("dto", dto);

		return "delivery/rentalcompleted";
	}

	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
}
