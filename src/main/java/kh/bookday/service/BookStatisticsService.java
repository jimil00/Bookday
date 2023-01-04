package kh.bookday.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.BookDAO;
import kh.bookday.dao.PostDAO;
import kh.bookday.dto.PostDTO;

@Service
public class BookStatisticsService {

	@Autowired
	private PostDAO dao;
	

	public List<PostDTO> selectPostListById(String id) {
		return dao.selectPostListById(id);
	}
	
	public String selectFvrBookImgById(String id) {
		return dao.selectFvrBookImgById(id);
	}
	
	public String selectFvrWriterById(String id) {
		return dao.selectFvrWriterById(id);
	}

	public String selectFvrGenreById(String id) {
		return dao.selectFvrGenreById(id);
	}


}
