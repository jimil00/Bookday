package kh.bookday.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.BookselvesDAO;

@Service
public class BookselvesService {
	
	@Autowired
	private BookselvesDAO dao;
}
