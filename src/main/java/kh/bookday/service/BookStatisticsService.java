package kh.bookday.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.BookStatisticsDAO;

@Service
public class BookStatisticsService {

	@Autowired
	private BookStatisticsDAO dao;
}
