package kh.bookday.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.BookDAO;
import kh.bookday.dto.BookDTO;
import kh.bookday.dto.BookbagDTO;
import kh.bookday.dto.PostDTO;
import kh.bookday.dto.WishlistDTO;

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
		
		
	//위시리스트로 도서 정보 이동
		public WishlistDTO selectForWishlist(String b_isbn) {
			
			WishlistDTO dto=new WishlistDTO();
			
			dto.setB_title(dao.selectBookByIsbn(b_isbn).getB_title());
			dto.setB_img_url(dao.selectBookByIsbn(b_isbn).getB_img_url());
			dto.setB_isbn(b_isbn);
			dto.setB_writer(dao.selectBookByIsbn(b_isbn).getB_writer());
			dto.setB_genre(dao.selectBookByIsbn(b_isbn).getB_genre());
			
			return dto;	
		}
		
		//책가방으로 도서 정보 이동	
	public BookbagDTO selectForBookbag(String b_isbn) {
			
			BookbagDTO dto=new BookbagDTO();
			
			dto.setB_isbn(b_isbn);
			dto.setB_img_url(dao.selectBookByIsbn(b_isbn).getB_img_url());
			dto.setB_title(dao.selectBookByIsbn(b_isbn).getB_title());
			dto.setB_writer(dao.selectBookByIsbn(b_isbn).getB_writer());
			dto.setB_genre(dao.selectBookByIsbn(b_isbn).getB_genre());
			
			return dto;	
		}
	
		//베스트셀러 도서 출력 
		public List<BookDTO> selectBestSeller() {
				return dao.selectBestSeller();
			}
			
		//스테디셀러 도서 출력 
		public List<BookDTO> selectSteadySeller() {
				return dao.selectSteadySeller();
			}
			

		//신간 도서 출력 
		public List<BookDTO> selectNewBooks() {
				return dao.selectNewBooks();
			}

		//함께 담은 책 출력
		public List<BookDTO> selectWithBooks(String b_isbn) {
			return dao.selectWithBooks(b_isbn);
		}
	
}
