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
		return db.selectList("Booknote.selectPostListById", id);
	}

	public void insertPost(PostDTO dto) {
		db.insert("Booknote.insertPost", dto);
	}

	public List<PostDTO> select20PostListById(HashMap<String, Object> data){
		return db.selectList("Post.select20PostListById", data);
	}

	public int select20PostCount() {
		return db.selectOne("Post.select20PostCount");
	}

	//해당 도서 포스트 출력
	public List<PostDTO> selectPostByIsbn(String b_isbn) {
		return db.selectList("Post.selectPostByIsbn", b_isbn);
	}

	// 지민 - 검색 시 포스트 출력
	public List<PostDTO> selectPostListBySw(String searchWord){
		return db.selectList("Post.selectPostListBySw", searchWord);
	}
}
