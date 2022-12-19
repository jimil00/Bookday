package kh.bookday.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.bookday.dto.BookmarkDTO;

@Repository
public class BookmarkDAO {
	
	@Autowired
	private SqlSession db;
	
	public List<BookmarkDTO> selectBookmarkListById(String id){
		return db.selectList("Bookmark.selectBookmarkListById", id);
	}
	
}
