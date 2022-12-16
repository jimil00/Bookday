package kh.bookday.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.BookmarkDAO;
import kh.bookday.dto.BookmarkDTO;

@Service
public class BookmarkService {

	@Autowired
	private BookmarkDAO dao;
	
	public List<BookmarkDTO> selectOnesBookmark(String id){
		return dao.selectOnesBookmark(id);
	}
	
}
