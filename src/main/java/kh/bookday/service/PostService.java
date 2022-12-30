package kh.bookday.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jsoup.Jsoup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.PostCommentDAO;
import kh.bookday.dao.PostDAO;
import kh.bookday.dao.PostLikeDAO;
import kh.bookday.dto.PostCommentDTO;
import kh.bookday.dto.PostDTO;

@Service
public class PostService {

	@Autowired
	private PostDAO dao;

	@Autowired
	private PostLikeDAO ldao;

	@Autowired
	private PostCommentDAO cdao;
	
	
	public List<PostDTO> selectPostListById(String id){
		List<PostDTO> plist = dao.selectPostListById(id);
		for(PostDTO post: plist) {
			post.setP_content(Jsoup.parse(post.getP_content()).text());
		}
		return plist;
	}
	
	public int insertPost(PostDTO dto) {
		return dao.insertPost(dto);
	}
	
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
	
	public PostDTO selectPostByPseq(int p_seq) {
		return dao.selectPostByPseq(p_seq);
	}
	
	public List<PostCommentDTO> selectPostCListByPseq(int p_seq){
		return cdao.selectPostCListByPseq(p_seq);
	}
	
	public boolean selectPostLListByPseq(String id, int p_seq) {
		Map<String, Object> param = new HashMap<>();
		param.put("id", id);
		param.put("p_seq", p_seq);
		if(ldao.selectPostLListByPseq(param)) {
			return true;
		}else {
			return false;
		}
	}
	
	// 댓글 리스트 출력
	public List<PostCommentDTO> selectPCListByPseq(PostCommentDTO dto){
		return cdao.selectPCListByPseq(dto);
	}

	public int insertPostComment(PostCommentDTO dto) {
		return cdao.insertPostComment(dto);
	}

}
