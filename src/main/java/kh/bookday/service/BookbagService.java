package kh.bookday.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.BookbagDAO;
import kh.bookday.dto.BookbagDTO;
import kh.bookday.dto.RentalDTO;

@Service
public class BookbagService {

	@Autowired
	private BookbagDAO dao;

	// 지민	
	// 책가방 리스트 출력
	public List<BookbagDTO> selectBookbagListById(String id) {	
		return dao.selectBookbagListById(id);
	}

	// 책 삭제
	public void deleteBookbagBySeq(int bookbag_seq) {
		dao.deleteBookbagBySeq(bookbag_seq);
	}

	// 책 출력
	public BookbagDTO selectBookbagBySeq(int bookbag_seq) {	
		return dao.selectBookbagBySeq(bookbag_seq);
	}
	// 지민

	//shu
	// 책가방에 책 추가
	public void insertBookbag(BookbagDTO dto) {
		dao.insertBookbag(dto);
	}
	//shu
}
