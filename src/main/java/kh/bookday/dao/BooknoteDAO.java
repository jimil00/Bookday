package kh.bookday.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.bookday.dto.BookDTO;

@Repository
public class BooknoteDAO {

	@Autowired
	private SqlSession db;
	
	public List<BookDTO> selectBookselves(){
		return db.selectList("Book.selectList");
	}
}
