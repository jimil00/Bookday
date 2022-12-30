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
	
	
	@RequestMapping("selectPostListById")
	public String selectPostListById(Model model) {
		// id session
//		String id = String.valueOf(session.getAttribute("loginID"));
		String id = "zxcvzxcv";
		
		MemberDTO dto = mservice.selectMemberById(id);
		model.addAttribute("dto", dto);
		
		List<PostDTO> list = service.selectPostListById(id);
		model.addAttribute("list", list);
		
		return "mybook/booknote/selectpostlist";
	}
	
	@RequestMapping("toInsertPost")
	public String toInsertPost(Model model) {
		// id session
//		String id = String.valueOf(session.getAttribute("loginID"));
		String id = "zxcvzxcv";
		
		MemberDTO dto = mservice.selectMemberById(id);
		model.addAttribute("dto", dto);
		
		return "mybook/booknote/insertpost";
	}
	
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
	

	@RequestMapping("selectPostByPseq")
	public String selectPostByPseq(int p_seq, Model model) {
		// id session
//		String id = String.valueOf(session.getAttribute("loginID"));
		String id = "zxcvzxcv";
		
		MemberDTO mdto = mservice.selectMemberById(id);
		model.addAttribute("mdto", mdto);
		
		PostDTO dto = service.selectPostByPseq(p_seq);
		model.addAttribute("dto", dto);
		
		boolean result = service.selectPostLListByPseq(id, p_seq);
		model.addAttribute("result", result);
		
		List<PostCommentDTO> list = service.selectPostCListByPseq(p_seq);
		model.addAttribute("list", list);
		System.out.println(list.size());
		
		return "mybook/booknote/selectpost";
	}
	
	@ResponseBody
	@RequestMapping("selectPCListByPseq")
	public String selectPCListByPseq(PostCommentDTO dto) {
		
		return new Gson().toJson(service.selectPCListByPseq(dto));
	}
	
	@ResponseBody
	@RequestMapping("insertPostComment")
	public int insertPostComment(PostCommentDTO dto) {
		// id session
//		String id = String.valueOf(session.getAttribute("loginID"));
		String id = "zxcvzxcv";
		
		MemberDTO mdto = mservice.selectMemberById(id);
		dto.setPc_writer_id(mdto.getId());
		dto.setPc_writer_nn(mdto.getNickname());
		dto.setSysprofname(mdto.getSysprofname());
		int result = service.insertPostComment(dto);
		System.out.println(result);
		return result;
	}
	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}

}
