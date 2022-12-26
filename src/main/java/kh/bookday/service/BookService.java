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
	
	//해당 도서 리뷰 출력
	public List<ReviewDTO> selectReviewByIsbn(String b_isbn) {
		
		return dao.selectReviewByIsbn(b_isbn);
	}
	
	//해당 도서 리뷰 작성
		public void insertReview(ReviewDTO dto) {
			
			dao.insertReview(dto);
		}
	
	//해당 도서 리뷰 삭제 //String b_isbn, String rv_writer_id
	public void deleteReview(String b_isbn, String rv_seq) {
		
		Map<String,String> param = new HashMap<>();
		param.put("b_isbn", b_isbn);
		param.put("rv_seq", rv_seq);
		
		dao.deleteReview(param);
	}
	
	//해당 도서 리뷰 수정 
	public void updateReview(ReviewDTO dto) {

		dao.updateReview(dto);
	}
	
	//로그인 유저에 대한 해당 도서 리뷰 좋아요 여부 파악
		public boolean findReviewLike(String b_isbn, String rv_seq, String id) {
			Map<String, String> param=new HashMap<>();
			param.put("b_isbn", b_isbn);
			param.put("rv_seq", rv_seq);
			param.put("id", id);
			
			return dao.findReviewLike(param);
		}
	
	//해당 도서 리뷰 좋아요 추가
	public void insertReviewLike (ReviewLikeDTO dto) {
		dao.insertReviewLike(dto);
	}
	
	//해당 도서 리뷰 좋아요 삭제
	public void deleteReviewLike (String b_isbn, String rv_seq, String id) {
			Map<String, String> param=new HashMap<>();
			param.put("b_isbn", b_isbn);
			param.put("rv_seq", rv_seq);
			param.put("id", id);
			
			dao.deleteReviewLike(param);
		}
	
	//해당 도서 포스트 출력
	public List<PostDTO> selectPostByIsbn(String b_isbn) {
		return dao.selectPostByIsbn(b_isbn);
	}


	//해당 도서와 함께 담은 책 출력
	//메서드명 구상 중
//	public List<BookDTO> selectBooks(String b_isbn) {
//		return db.selectList("selectPostByIsbn", b_isbn);
//	};
	

}
