package kh.bookday.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.BookDAO;
import kh.bookday.dto.PostDTO;

@Service
public class PostService {
	
	@Autowired
	private BookDAO dao;
	
	//해당 도서 포스트 출력
		public List<PostDTO> selectPostByIsbn(String b_isbn) {
			return dao.selectPostByIsbn(b_isbn);
		}

}
