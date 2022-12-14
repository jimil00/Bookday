package kh.bookday.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.BooknoteDAO;
import kh.bookday.dto.BookDTO;

@Service
public class BooknoteService {
	
	@Autowired
	private BooknoteDAO dao;
	
	public List<BookDTO> selectBookselves(){
		return dao.selectBookselves();
	}
}
