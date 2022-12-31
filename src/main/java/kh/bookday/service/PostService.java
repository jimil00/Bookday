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
	
	

// 수진
	// 책장 페이지) 포스트 올린 책 20개씩 출력(무한 스크롤)
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

	// 포스트 페이지) 포스트 리스트 출력
	public List<PostDTO> selectPostListById(String id){
		List<PostDTO> plist = dao.selectPostListById(id);
		for(PostDTO post: plist) {
			post.setP_content(Jsoup.parse(post.getP_content()).text());
		}
		return plist;
	}

	// 포스트 페이지) 포스트 리스트 좋아요 출력
	public List<PostLikeDTO> selectPostLikeListById(String id){
		List<PostLikeDTO> llist = ldao.selectPostLikeListById(id);
		return llist;
	}


	// 포스트 페이지) 포스트 입력
	public int insertPost(PostDTO dto) { // p_seq받아오는 걸로 바꾸기
		return dao.insertPost(dto);
	}

	// 포스트 페이지) 포스트 디테일 출력
	public PostDTO selectPostByPseq(int p_seq) {
		return dao.selectPostByPseq(p_seq);
	}

	// 포스트 페이지) 포스트 디테일 좋아요 출력
	public boolean selectPostLike(PostLikeDTO ldto) {
		return ldao.selectPostLike(ldto);
	}

	// 포스트 페이지) 포스트 좋아요 입력
	public String insertPostLike(PostLikeDTO dto) {
		int result = 0;
		if(!ldao.selectPostLike(dto)) {
			result = ldao.insertPostLike(dto);
			dao.updatePLCUp(dto.getP_seq());
		}
		return String.valueOf(result);
	}
	
	// 포스트 페이지)  포스트 좋아요 삭제
	public String deletePostLike(PostLikeDTO dto) {
		int result = 0;
		if(ldao.selectPostLike(dto)) {
			result = ldao.deletePostLike(dto);
			dao.updatePLCDown(dto.getP_seq());
		}
		return String.valueOf(result);
	}

	// 포스트 페이지) 포스트 댓글 출력
	public List<PostCommentDTO> selectPostCListByPseq(int p_seq){
		return cdao.selectPostCListByPseq(p_seq);
	}

	// 포스트 페이지) 댓글 리스트 출력
	public List<PostCommentDTO> selectPCListByPseq(PostCommentDTO dto){
		return cdao.selectPCListByPseq(dto);
	}

	// 포스트 페이지) 댓글 입력
	public void insertPostComment(PostCommentDTO dto) {
		cdao.insertPostComment(dto);
		dao.updatePCCUp(dto.getP_seq());

	}
	// 포스트 페이지) 댓글 삭제
	public void deletePostComment(int pc_seq) {
		cdao.deletePostComment(pc_seq);
		dao.updatePCCDown(pc_seq);
	}
	
	// 포스트 검색
	public List<PostDTO> selectSearchPostList(String id, String searchWord){
		HashMap<String, String> param = new HashMap<>();
		param.put("id", id);
		param.put("searchWord", searchWord);

		return dao.selectSearchPostList(param);
	}
// 수진

	// 해당 도서에 대한 포스트 출력
	public List<PostDTO> selectPostByIsbn(String b_isbn) {
		return dao.selectPostByIsbn(b_isbn);
	}

	//인기 포스트 출력
	public List<PostDTO> selectPopularPost() {
		return dao.selectPopularPost();
	}
		
// 지민	
	// 검색 시 포스트 출력
	public List<PostDTO> selectPostListBySw(String searchWord){
		return dao.selectPostListBySw(searchWord);
	}
// 지민

}
