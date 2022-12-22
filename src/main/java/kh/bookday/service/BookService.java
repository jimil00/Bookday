package kh.bookday.service;

import java.util.HashMap;
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
	
	//해당 도서 정보 출력
		public BookDTO selectBookByIsbn(String b_isbn) {
			return dao.selectBookByIsbn(b_isbn);
		};
	
	//해당 도서 리뷰 출력
	public ReviewDTO selectReviewByIsbn(String b_isbn) {
		return dao.selectReviewByIsbn(b_isbn);
	};
	
	//해당 도서 리뷰 작성
		public void insertReview(ReviewDTO dto) {
			dao.insertReview(dto);
		};
	
	//해당 도서 리뷰 삭제 //String b_isbn, String rv_writer_id
	public void deleteReview(String b_isbn, String rv_writer_id) {
		
		Map<String ,String> param = new HashMap<>();
		param.put("b_isbn", b_isbn);
		param.put("rv_writer_id", rv_writer_id);
		
		dao.deleteReview(param);
	};
	
	//해당 도서 리뷰 수정 
	public void updateReview(ReviewDTO dto) {

		dao.updateReview(dto);
	};
	
	//해당 도서 리뷰 좋아요
	public int insertLikeCount (ReviewLikeDTO dto) {
		return dao.insertLikeCount(dto);
	};
	
	//해당 도서 포스트 출력
	public PostDTO selectPostByIsbn(String b_isbn) {
		return dao.selectPostByIsbn(b_isbn);
	};

	//해당 도서와 함께 담은 책 출력
	//메서드명 구상 중
//	public List<BookDTO> selectBooks(String b_isbn) {
//		return db.selectList("selectPostByIsbn", b_isbn);
//	};
	
}
