package kh.bookday.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.PostDAO;
import kh.bookday.dto.PostDTO;

@Service
public class BookCalendarService {

	@Autowired
	private PostDAO dao;

	public List<PostDTO> selectPostListById(String id) {
		List<PostDTO> list = dao.selectPostListById(id);
		return list;
	}
}
