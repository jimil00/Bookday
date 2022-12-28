package kh.bookday.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.BookbagDAO;
import kh.bookday.dto.BookbagDTO;

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
	
	/* 책가방에 책 추가 */
	public void insertBookbag(BookbagDTO dto) {
		dao.insertBookbag(dto);
	}
	
}
