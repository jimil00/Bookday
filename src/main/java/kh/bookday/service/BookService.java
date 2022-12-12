package kh.bookday.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.BookDAO;

@Service
public class BookService {
	
	@Autowired
	private BookDAO dao;

}
