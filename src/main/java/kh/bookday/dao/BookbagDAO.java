package kh.bookday.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.bookday.dto.BookbagDTO;

@Repository
public class BookbagDAO {
	
	@Autowired
	private SqlSession db;
	
	/* 책가방 리스트 출력 */
	public List<BookbagDTO> selectById (String id){
		return db.selectList("Bookbag.selectById", id);
	}

}
