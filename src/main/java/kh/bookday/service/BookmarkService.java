package kh.bookday.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;

import kh.bookday.dao.BookmarkDAO;
import kh.bookday.dto.BookmarkDTO;

@Service
public class BookmarkService {

	@Autowired
	private BookmarkDAO dao;

	public void insertBookmark(BookmarkDTO dto) {
		dao.insertBookmark(dto);
	}
	
	public List<BookmarkDTO> selectBookmarkListById(String id){
		return dao.selectBookmarkListById(id);
	}
	
	public List<BookmarkDTO> selectBmListByBmseq(BookmarkDTO dto) {
		return dao.selectBmListByBmseq(dto);
	}
	
	public List<BookmarkDTO> selectBookmarkListBySw(String id, String searchWord){
		HashMap<String, String> param = new HashMap<>();
		param.put("id", id);
		param.put("searchWord", searchWord);

		return dao.selectBookmarkListBySw(param);
	}
	
	public void deleteBookmarkBySeq(int bm_seq) {
		dao.deleteBookmarkBySeq(bm_seq);
	}




}
