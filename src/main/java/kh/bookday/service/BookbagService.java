package kh.bookday.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.BookbagDAO;
import kh.bookday.dto.BookbagDTO;
import kh.bookday.dto.MemberDTO;
import kh.bookday.dto.WishlistDTO;

@Service
public class BookbagService {
	
	@Autowired
	private BookbagDAO dao;
	
	/* 책가방 리스트 출력 */
	public List<BookbagDTO> selectBookbagListById(String id) {	
		return dao.selectBookbagListById(id);
	}
	
	/* 담은 작품 삭제 */
	public void deleteBookbagBySeq(int bookbag_seq) {
		dao.deleteBookbagBySeq(bookbag_seq);
	}
	
	/* 위시리스트 체크 */
	public WishlistDTO selectWishlistByIdBisbn(String id, String b_isbn) {
		Map<String, String> param = new HashMap<>();
		param.put("id", id);
		param.put("b_isbn", b_isbn);
		return dao.selectWishlistByIdBisbn(param);
	}
	
	/* 위시리스트 추가 */
	public void insertWishlist(WishlistDTO dto) {
		dao.insertWishlist(dto);
	}
	
	/* 회원 배송지 정보 입력 */
	public void updateMemberById(MemberDTO dto) {
		dao.updateMemberById(dto);
	}
	
	/* 월 구독 회원 등록 */
	public void insertMonthSubMemberById(String id) {
		dao.insertMonthSubMemberById(id);
	}
	
	/* 회원 등급 변경 */
	public void updateMemberGradeById(String id) {
		dao.updateMemberGradeById(id);
	}
}
