package kh.bookday.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.bookday.dto.PostCommentDTO;

@Repository
public class PostCommentDAO {
	
	@Autowired
	private SqlSession db;
	
	public List<PostCommentDTO> selectPostCListByPseq(int p_seq){
		return db.selectList("PostComment.selectPostCListByPseq", p_seq);
	}
	
	public List<PostCommentDTO> selectPCListByPseq(PostCommentDTO dto){
		return db.selectList("PostComment.selectPCListByPseq", dto);
	}
	
	public int insertPostComment(PostCommentDTO dto) {
		return db.insert("PostComment.insertPostComment", dto);
	}
}
