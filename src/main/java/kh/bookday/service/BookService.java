package kh.bookday.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.BookDAO;
import kh.bookday.dto.BookDTO;

@Service
public class BookService {
	
	@Autowired
	private BookDAO dao;
	
	public List<BookDTO> selectBookListBySw(String searchWord){
		return dao.selectBookListBySw(searchWord);
	}

}
