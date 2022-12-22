package kh.bookday.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.bookday.dto.BookDTO;
import kh.bookday.dto.PostDTO;
import kh.bookday.dto.ReviewDTO;
import kh.bookday.dto.ReviewLikeDTO;

@Repository
public class BookDAO {
	
	@Autowired
	private SqlSession db;
	
	//해당 도서 정보 출력
	public BookDTO selectBookByIsbn(String b_isbn) {
		return db.selectOne("selectBookByIsbn", b_isbn);
	};
	
	//해당 도서 리뷰 출력
	public ReviewDTO selectReviewByIsbn(String b_isbn) {
		return db.selectOne("selectReviewByIsbn", b_isbn);
	};
	
	//해당 도서 리뷰 작성
	public void insertReview(ReviewDTO dto) {
		db.selectOne("selectReviewByIsbn", dto);
	};
	
	
	//해당 도서 리뷰 삭제 //String b_isbn, String rv_writer_id
	public void deleteReview(Map<String, String> param) {
		db.delete("deleteReview", param);
	};
	
	//해당 도서 리뷰 수정
	public void updateReview(ReviewDTO dto) {
		db.update("deleteReview", dto);
	};
	
	//해당 도서 리뷰 좋아요
	public int insertLikeCount (ReviewLikeDTO dto) {
		return db.selectOne("insertLikeCount", dto);
	};
	
	//해당 도서 포스트 출력
	public PostDTO selectPostByIsbn(String b_isbn) {
		return db.selectOne("selectPostByIsbn", b_isbn);
	};

	//해당 도서와 함께 담은 책 출력
	//메서드명 구상 중
//	public List<BookDTO> selectBooks(String b_isbn) {
//		return db.selectList("selectPostByIsbn", b_isbn);
//	};
	
	
}
