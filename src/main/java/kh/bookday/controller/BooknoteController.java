package kh.bookday.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kh.bookday.dto.MemberDTO;
import kh.bookday.dto.PostCommentDTO;
import kh.bookday.dto.PostDTO;
import kh.bookday.dto.PostLikeDTO;
import kh.bookday.service.MemberService;
import kh.bookday.service.PostService;

@Controller
@RequestMapping("booknote")
public class BooknoteController {

	@Autowired
	private MemberService mservice;

	@Autowired
	private PostService service;

	@Autowired
	private HttpSession session;

	// 포스트 리스트 출력
	@RequestMapping("selectPostListById")
	public String selectPostListById(Model model) {
		
		// id session
		//		String id = String.valueOf(session.getAttribute("loginID"));
		String id = "zxcvzxcv";
		session.setAttribute("loginID", id);

		
		// 회원정보 
		MemberDTO dto = mservice.selectMemberById(id);
		model.addAttribute("dto", dto);

		// 포스트 리스트
		List<PostDTO> list = service.selectPostListById(id);
		model.addAttribute("list", list);
		
		// 포스트 좋아요 리스트
		List<PostLikeDTO> llist = service.selectPostLikeListById(id);
		model.addAttribute("llist", llist);
		System.out.println(llist.size());
		
		return "mybook/booknote/selectpostlist";
	}	

	// 포스트 좋아요 입력, +1
	@ResponseBody
	@RequestMapping("insertPostLike")
	public String insertPostLike(PostLikeDTO dto) {
		// id session
		//		String id = String.valueOf(session.getAttribute("loginID"));
		String id = "zxcvzxcv";
		dto.setId(id);
		dto.setP_writer_id(id);
		String result = service.insertPostLike(dto);
		return result;
	}
	
	// 포스트 좋아요 삭제, -1
	@ResponseBody
	@RequestMapping("deletePostLike")
	public String deletePostLike(PostLikeDTO dto) {
		// id session
		//		String id = String.valueOf(session.getAttribute("loginID"));
		String id = "zxcvzxcv";
		dto.setId(id);
		dto.setP_writer_id(id);
		String result = service.deletePostLike(dto);
		return result;
	}

	// 포스트 입력 페이지로
	@RequestMapping("toInsertPost")
	public String toInsertPost(Model model) {
		// id session
		//		String id = String.valueOf(session.getAttribute("loginID"));
		String id = "zxcvzxcv";

		MemberDTO dto = mservice.selectMemberById(id);
		model.addAttribute("dto", dto);

		return "mybook/booknote/insertpost";
	}

	// 포스트 입력
	@ResponseBody
	@RequestMapping("insertPost")
	public String insertPost(PostDTO dto, Model model) {
		// id session
		//		String id = String.valueOf(session.getAttribute("loginID"));
		String id = "zxcvzxcv";
		dto.setP_writer_id(id);

		int p_seq = service.insertPost(dto);

		return "/booknote/selectPostListById";
	}

	// 포스트 디테일 출력
	@RequestMapping("selectPostByPseq")
	public String selectPostByPseq(int p_seq, Model model) {
		// id session
		//		String id = String.valueOf(session.getAttribute("loginID"));
		String id = "zxcvzxcv";
		
		// 회원 정보
		MemberDTO mdto = mservice.selectMemberById(id);
		model.addAttribute("mdto", mdto);
		
		// 포스트 디테일
		PostDTO dto = service.selectPostByPseq(p_seq);
		model.addAttribute("dto", dto);
		
		// 포스트 디테일에서 좋아요
		PostLikeDTO ldto = new PostLikeDTO();
		ldto.setP_seq(p_seq);
		ldto.setId(id);
		boolean result = service.selectPostLike(ldto);
		model.addAttribute("result", result);

		// 포스트 댓글 출력 foreach
		List<PostCommentDTO> list = service.selectPostCListByPseq(p_seq);
		model.addAttribute("list", list);
		System.out.println(list.size());

		return "mybook/booknote/selectpost";
	}

	// 포스트 댓글 출력 ajax
	@ResponseBody
	@RequestMapping("selectPCListByPseq")
	public String selectPCListByPseq(PostCommentDTO dto) {
		return new Gson().toJson(service.selectPCListByPseq(dto));
	}

	// 포스트 댓글 입력
	@ResponseBody
	@RequestMapping("insertPostComment")
	public void insertPostComment(PostCommentDTO dto) {
		// id session
		//		String id = String.valueOf(session.getAttribute("loginID"));
		String id = "zxcvzxcv";

		MemberDTO mdto = mservice.selectMemberById(id);
		dto.setPc_writer_id(mdto.getId());
		dto.setPc_writer_nn(mdto.getNickname());
		dto.setSysprofname(mdto.getSysprofname());
		service.insertPostComment(dto);
	}
	
	
	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}

}
