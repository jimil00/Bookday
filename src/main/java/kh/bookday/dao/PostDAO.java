package kh.bookday.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.bookday.dto.PostDTO;

@Repository
public class PostDAO {

	@Autowired
	private SqlSession db;

	
	public List<PostDTO> selectPostListById(String id){
		return db.selectList("Post.selectPostListById", id);
	}
	
	public int insertPost(PostDTO dto) {
		return db.insert("Post.insertPost", dto);
	}

	public List<PostDTO> select20PostListById(HashMap<String, Object> data){
		return db.selectList("Post.select20PostListById", data);
	}

	public int select20PostCount() {
		return db.selectOne("Post.select20PostCount");
	}
	
	public PostDTO selectPostByPseq(int p_seq) {
		return db.selectOne("Post.selectPostByPseq", p_seq);
	}

	//해당 도서 포스트 출력
	public List<PostDTO> selectPostByIsbn(String b_isbn) {
		return db.selectList("Post.selectPostByIsbn", b_isbn);
	}
}
