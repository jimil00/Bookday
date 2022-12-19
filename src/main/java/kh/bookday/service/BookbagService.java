package kh.bookday.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.BookbagDAO;
import kh.bookday.dto.BookbagDTO;
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
	public int deleteBookbagBySeq(int bookbag_seq) {
		return dao.deleteBookbagBySeq(bookbag_seq);
	}
	
	/* 위시리스트 추가 */
	public int insertWishlist(WishlistDTO dto) {
		return dao.insertWishlist(dto);
	}
}
