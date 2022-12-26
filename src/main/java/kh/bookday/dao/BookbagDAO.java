package kh.bookday.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.bookday.dto.BookbagDTO;
import kh.bookday.dto.MemberDTO;
import kh.bookday.dto.MonthSubMemberDTO;
import kh.bookday.dto.WishlistDTO;

@Repository
public class BookbagDAO {
	
	@Autowired
	private SqlSession db;
	
	/* 책가방 리스트 출력 */
	public List<BookbagDTO> selectBookbagListById(String id) {
		return db.selectList("Bookbag.selectBookbagListById", id);
	}
	
	/* 월 구독 회원 정보 조회 */
	public MonthSubMemberDTO selectMonthSubMemberById(String id) {
		return db.selectOne("Bookbag.selectMonthSubMemberById", id);
	}
	
	/* 담은 작품 삭제 */
	public void deleteBookbagBySeq(int bookbag_seq) {
		db.delete("Bookbag.deleteBookbagBySeq", bookbag_seq);
	}
	
	/* 위시리스트 체크 */
	public WishlistDTO selectWishlistByIdBisbn(Map<String, String> param) {
		return db.selectOne("Bookbag.selectWishlistByIdBisbn", param);
	}
	
	/* 위시리스트 추가 */
	public void insertWishlist(WishlistDTO dto) {
		db.insert("Bookbag.insertWishlist", dto);
	}
	
	/* 회원 배송지 정보 입력 */
	public void updateMemberAddressById(MemberDTO dto) {
		db.update("Bookbag.updateMemberAddressById", dto);
	}
	
	/* 월 구독 회원 등록 */
	public void insertMonthSubMemberById(String id) {
		db.insert("Bookbag.insertMonthSubMemberById", id);
	}
	
	/* 회원 등급 변경 */
	public void updateMemberGradeById(String id) {
		db.update("Bookbag.updateMemberGradeById", id);
	}
}
