package kh.bookday.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.bookday.dto.BookDTO;

@Repository
public class BookDAO {
	
	@Autowired
	private SqlSession db;
	
	public List<BookDTO> selectBookListBySw(String searchWord){
		return db.selectList("Book.selectBookListBySw", searchWord);
	}
	
}
