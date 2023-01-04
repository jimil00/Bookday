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

// 수진
	
	// 포스트 개수 출력
	public int selectPostCountById(String id) {
		return db.selectOne("Post.selectPostCountById", id);
	}
	// 포스트 리스트 마이북 포스트 페이지에 아이디로 출력
	public List<PostDTO> selectPostListById(String id){
		return db.selectList("Post.selectPostListById", id);
	}

	// 포스트 입력
	public int insertPost(PostDTO dto) {
		return db.insert("Post.insertPost", dto);
	}

	// 포스트 리스트 책장에 20개 먼저 아이디로 출력
	public List<PostDTO> select20PostListById(HashMap<String, Object> data){
		return db.selectList("Post.select20PostListById", data);
	}

	// 포스트 20
	public int select20PostCount() {
		return db.selectOne("Post.select20PostCount");
	}

	public PostDTO selectPostByPseq(int p_seq){
		return db.selectOne("Post.selectPostByPseq", p_seq);
	}
	
	// 포스트 댓글 입력시 댓글 수 +1
	public void updatePCCUp(int p_seq) {
		db.update("Post.updatePCCUp", p_seq);
	}

	// 포스트 댓글 삭제시 댓글 수 -1
	public void updatePCCDown(int p_seq) {
		db.update("Post.updatePCCDown", p_seq);
	}
	
	// 포스트 리스트 좋아요 +1
	public void updatePLCUp(int p_seq) {
		db.update("Post.updatePLCUp", p_seq);
	}

	// 포스트 리스트 좋아요 -1
	public void updatePLCDown(int p_seq) {
		db.update("Post.updatePLCDown", p_seq);
	}
	
	// 포스트 검색
	public List<PostDTO> selectSearchPostList(HashMap<String, String> param) {
		return db.selectList("Post.selectSearchPostList", param);
	}
	
	// 포스트 삭제
	public void deletePostByPseq(int p_seq) {
		db.delete("Post.deletePostByPseq", p_seq);
	}
	// 통계 가장 좋아하는 책
	public String selectFvrBookImgById(String id) {
		return db.selectOne("Post.selectFvrBookImgById", id);
	}
	
	// 통계 가장 좋아하는 작가
	public String selectFvrWriterById(String id) {
		return db.selectOne("Post.selectFvrWriterById", id);
	}
	
	// 통계 좋아하는 장르
	public String selectFvrGenreById(String id) {
		return db.selectOne("Post.selectFvrGenreById", id);
	}

// 수진

	//해당 도서 포스트 출력
	public List<PostDTO> selectPostByIsbn(String b_isbn) {
		return db.selectList("Post.selectPostByIsbn", b_isbn);
	}

	// 지민 
	// 검색 시 포스트 출력
	public List<PostDTO> selectPostListBySw(String searchWord){
		return db.selectList("Post.selectPostListBySw", searchWord);
	}
	// 지민 

	//shu
	//인기 포스트 출력
	public List<PostDTO> selectPopularPost() {
		return db.selectList("Post.selectPopularPost");

	}





}
