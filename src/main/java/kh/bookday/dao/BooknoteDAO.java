package kh.bookday.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.bookday.dto.PostDTO;

@Repository
public class BooknoteDAO {

	@Autowired
	private SqlSession db;
	
	public List<PostDTO> selectAllPost(String id){
		return db.selectList("Booknote.selectAllPost", id);
	}
}
