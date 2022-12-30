package kh.bookday.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.bookday.dto.PostLikeDTO;

@Repository
public class PostLikeDAO {

	@Autowired
	private SqlSession db;
	
	public List<PostLikeDTO> selectPostLikeListById(String id) {
		return db.selectList("PostLike.selectPostLikeListById", id);
	}
	
	public boolean selectPostLike(PostLikeDTO dto) {
		return db.selectOne("PostLike.selectPostLike", dto);
	}
	
	public int insertPostLike(PostLikeDTO dto) {
		return db.insert("PostLike.insertPostLike", dto);
	}

	public void deletePostLike(PostLikeDTO dto) {
		db.delete("PostLike.deletePostLike", dto);
	}
}
