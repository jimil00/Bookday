package kh.bookday.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.BookbagDAO;
import kh.bookday.dto.BookbagDTO;

@Service
public class BookbagService {
	
	@Autowired
	private BookbagDAO dao;
	
	/* 책가방 리스트 출력 */
	public List<BookbagDTO> selectById(String id){	
		return dao.selectById(id);
	}

	
}
