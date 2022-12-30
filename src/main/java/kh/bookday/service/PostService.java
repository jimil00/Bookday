package kh.bookday.service;

import java.util.HashMap;
import java.util.List;

import org.jsoup.Jsoup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.PostCommentDAO;
import kh.bookday.dao.PostDAO;
import kh.bookday.dao.PostLikeDAO;
import kh.bookday.dto.PostCommentDTO;
import kh.bookday.dto.PostDTO;
import kh.bookday.dto.PostLikeDTO;

@Service
public class PostService {

	@Autowired
	private PostDAO dao;

	@Autowired
	private PostLikeDAO ldao;

	@Autowired
	private PostCommentDAO cdao;

	// 포스트 리스트 출력
	public List<PostDTO> selectPostListById(String id){
		List<PostDTO> plist = dao.selectPostListById(id);
		for(PostDTO post: plist) {
			post.setP_content(Jsoup.parse(post.getP_content()).text());
		}
		return plist;
	}
	
	// 포스트 리스트 좋아요 출력
	public List<PostLikeDTO> selectPostLikeListById(String id){
		List<PostLikeDTO> llist = ldao.selectPostLikeListById(id);
		return llist;
	}
	
	// 포스트 입력
	public int insertPost(PostDTO dto) {
		return dao.insertPost(dto);
	}

	// 책장에 포스트 올린 책 출력(무한 스크롤)
	public List<PostDTO> select20PostListById(String id, int count) {

		if (dao.select20PostCount() < (count * 20) + 1) {
			return null;
		}

		HashMap<String, Object> data = new HashMap<>();
		data.put("min", (count * 20) + 1);
		data.put("max", (count * 20) + 20);
		data.put("id", id);

		return dao.select20PostListById(data);
	}
	
	// 포스트 출력
	public PostDTO selectPostByPseq(int p_seq) {
		return dao.selectPostByPseq(p_seq);
	}
	
	// 포스트 좋아요 출력
	public boolean selectPostLike(PostLikeDTO dto) {
		boolean result = ldao.selectPostLike(dto);
		return result;
	}
	
	// 포스트 좋아요 입력
	public String insertPostLike(PostLikeDTO dto) {
		int result = 0;
		if(!ldao.selectPostLike(dto)) {
			result = ldao.insertPostLike(dto);
		}
		return String.valueOf(result);
	}
	// 포스트 좋아요 삭제
	public void deletePostLike(PostLikeDTO dto) {
		ldao.deletePostLike(dto);
	}
	
	// 포스트 댓글 출력
	public List<PostCommentDTO> selectPostCListByPseq(int p_seq){
		return cdao.selectPostCListByPseq(p_seq);
	}
	
	// 댓글 리스트 출력
	public List<PostCommentDTO> selectPCListByPseq(PostCommentDTO dto){
		return cdao.selectPCListByPseq(dto);
	}
	
	// 댓글 입력
	public int insertPostComment(PostCommentDTO dto) {
		return cdao.insertPostComment(dto);
	}

	//해당 도서에 대한 포스트 출력
	public List<PostDTO> selectPostByIsbn(String b_isbn) {
			return dao.selectPostByIsbn(b_isbn);
		}

	//인기 포스트 출력
	public List<PostDTO> selectPopularPost() {
		return dao.selectPopularPost();
	}
		
	// 포스트 속 도서 검색
	public List<PostDTO> selectPostListBySw(String searchWord){
		return dao.selectPostListBySw(searchWord);
	}
}
