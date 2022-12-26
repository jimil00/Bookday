package kh.bookday.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.BookDAO;
import kh.bookday.dto.ReviewDTO;
import kh.bookday.dto.ReviewLikeDTO;

@Service
public class ReviewService {
	
	@Autowired
	private BookDAO dao;
	
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
			public boolean findReviewLike(String rv_seq, String id) {
				Map<String, String> param=new HashMap<>();
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
		
}
