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
	
	// 책 검색
	public List<BookDTO> selectBookListBySw(String searchWord){
		return db.selectList("Book.selectBookListBySw", searchWord);
	}
	
	//해당 도서 정보 출력
	public BookDTO selectBookByIsbn(String b_isbn) {
		return db.selectOne("Book.selectBookByIsbn", b_isbn);
	}
	
	//해당 도서 리뷰 출력
	public List<ReviewDTO> selectReviewByIsbn(String b_isbn) {
		return db.selectList("Book.selectReviewByIsbn", b_isbn);
	}
	
	//해당 도서 리뷰 작성
	public void insertReview(ReviewDTO dto) {
		db.insert("Book.insertReview", dto);
	}
	
	
	//해당 도서 리뷰 삭제 //String b_isbn, String rv_writer_id
	public void deleteReview(Map<String, String> param) {
		db.delete("Book.deleteReview", param);
	}
	
	//해당 도서 리뷰 수정
	public void updateReview(ReviewDTO dto) {
		db.update("Book.updateReview", dto);
	}
	
	//좋아요를 눌렀는지 안 눌렀는지 확인
	public boolean findReviewLike(Map<String, String> param) {
		return db.selectOne("Book.findLikeCount",param);
	}

	//해당 도서 리뷰 좋아요 추가
	public void insertReviewLike(ReviewLikeDTO dto) {
		db.selectOne("Book.insertReviewLike", dto);
	}
	
	//해당 도서 리뷰 좋아요 삭제
	public void deleteReviewLike(Map<String, String> param) {
		db.selectOne("Book.deleteReviewLike", param);
	}
	

	//해당 도서 포스트 출력
	public List<PostDTO> selectPostByIsbn(String b_isbn) {
		return db.selectList("Book.selectPostByIsbn", b_isbn);
	}

	//해당 도서와 함께 담은 책 출력
	//메서드명 구상 중
//	public List<BookDTO> selectBooks(String b_isbn) {
//		return db.selectList("selectPostByIsbn", b_isbn);
//	}
	
	
}
