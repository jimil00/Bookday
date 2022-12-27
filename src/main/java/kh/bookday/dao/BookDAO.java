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


	//해당 도서와 함께 담은 책 출력
	//메서드명 구상 중
//	public List<BookDTO> selectBooks(String b_isbn) {
//		return db.selectList("selectPostByIsbn", b_isbn);
//	}
	
	
}
