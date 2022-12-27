package kh.bookday.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.BookDAO;
import kh.bookday.dto.BookDTO;
import kh.bookday.dto.PostDTO;
import kh.bookday.dto.ReviewDTO;
import kh.bookday.dto.ReviewLikeDTO;

@Service
public class BookService {
	
	@Autowired
	private BookDAO dao;
	
	// 도서 검색
	public List<BookDTO> selectBookListBySw(String searchWord){
		return dao.selectBookListBySw(searchWord);
	}

	
	//해당 도서 정보 출력
		public BookDTO selectBookByIsbn(String b_isbn) {
			return dao.selectBookByIsbn(b_isbn);
		}
	
	//해당 도서와 함께 담은 책 출력
	//메서드명 구상 중
//	public List<BookDTO> selectBooks(String b_isbn) {
//		return db.selectList("selectPostByIsbn", b_isbn);
//	};
	

}
