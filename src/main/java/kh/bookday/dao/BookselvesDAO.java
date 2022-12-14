package kh.bookday.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookselvesDAO {
	
	@Autowired
	private SqlSession db;
}
