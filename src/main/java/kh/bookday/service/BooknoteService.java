package kh.bookday.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.BooknoteDAO;
import kh.bookday.dto.PostDTO;

@Service
public class BooknoteService {
	
	@Autowired
	private BooknoteDAO dao;
	
	public List<PostDTO> selectPostListById(String id){
		return dao.selectPostListById(id);
	}
}
