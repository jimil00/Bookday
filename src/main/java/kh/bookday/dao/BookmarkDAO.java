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
	
	public void insertBookmark(BookmarkDTO dto) {
		db.insert("Bookmark.insertBookmark", dto);
	}
	
	public List<BookmarkDTO> selectBookmarkListById(String id){
		return db.selectList("Bookmark.selectBookmarkListById", id);
	}
	
	public List<BookmarkDTO> selectBmListByBmseq(BookmarkDTO dto) {
		return db.selectList("Bookmark.selectBmListByBmseq", dto);
	}
	
	public List<BookmarkDTO> selectBookmarkListBySw(String searchWord){
		return db.selectList("Bookmark.selectBookmarkListBySw", searchWord);
	}
	
	public void deleteBookmarkBySeq(int bm_seq) {
		db.delete("Bookmark.deleteBookmarkBySeq", bm_seq);
	}



}
