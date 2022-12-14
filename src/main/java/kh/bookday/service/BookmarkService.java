package kh.bookday.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.BookmarkDAO;

@Service
public class BookmarkService {

	@Autowired
	private BookmarkDAO dao;
}
