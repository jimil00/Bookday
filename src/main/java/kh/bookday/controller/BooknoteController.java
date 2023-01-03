package kh.bookday.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

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

		String id = String.valueOf(session.getAttribute("loginID"));

		// 회원정보 
		MemberDTO dto = mservice.selectMemberById(id);
		model.addAttribute("dto", dto);

		// 포스트 리스트
		List<PostDTO> list = service.selectPostListById(id);
		model.addAttribute("list", list);

		// 포스트 좋아요 리스트
		List<PostLikeDTO> llist = service.selectPostLikeListById(id);
		model.addAttribute("llist", llist);

		return "mybook/booknote/selectpostlist";
	}	

	// 포스트 좋아요 입력, +1
	@ResponseBody
	@RequestMapping("insertPostLike")
	public String insertPostLike(PostLikeDTO dto) {

		String id = String.valueOf(session.getAttribute("loginID"));

		dto.setId(id);
		dto.setP_writer_id(id);
		String result = service.insertPostLike(dto);
		return result;
	}

	// 포스트 좋아요 삭제, -1
	@ResponseBody
	@RequestMapping("deletePostLike")
	public String deletePostLike(PostLikeDTO dto) {

		String id = String.valueOf(session.getAttribute("loginID"));

		dto.setId(id);
		dto.setP_writer_id(id);
		String result = service.deletePostLike(dto);
		return result;
	}

	// 포스트 입력 페이지로
	@RequestMapping("toInsertPost")
	public String toInsertPost(Model model) {

		String id = String.valueOf(session.getAttribute("loginID"));

		MemberDTO dto = mservice.selectMemberById(id);
		model.addAttribute("dto", dto);

		return "mybook/booknote/insertpost";
	}

	// 포스트 입력
	@ResponseBody
	@RequestMapping("insertPost")
	public String insertPost(PostDTO dto, Model model) {
		System.out.println(dto.getDyst_read());
		String id = String.valueOf(session.getAttribute("loginID"));

		String nickname = String.valueOf(session.getAttribute("nickname"));
		dto.setP_writer_id(id);
		dto.setP_writer_nn(nickname);

		int p_seq = service.insertPost(dto);

		return "/booknote/selectPostListById";
	}

	// 포스트 디테일 출력
	@RequestMapping("selectPostByPseq")
	public String selectPostByPseq(int p_seq, Model model) {

		String id = String.valueOf(session.getAttribute("loginID"));

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

		return "mybook/booknote/selectpost";
	}

	// 포스트 댓글 출력 ajax
	@ResponseBody
	@RequestMapping("selectPCListByPseq")
	public String selectPCListByPseq(PostCommentDTO dto) {

		String id = String.valueOf(session.getAttribute("loginID"));
		// 버튼 뜨는지 꼭 다시 확인
		return new Gson().toJson(service.selectPCListByPseq(dto));
	}

	// 포스트 댓글 입력
	@ResponseBody
	@RequestMapping("insertPostComment")
	public void insertPostComment(PostCommentDTO dto) {

		String id = String.valueOf(session.getAttribute("loginID"));
		System.out.println(id);

		MemberDTO mdto = mservice.selectMemberById(id);
		System.out.println(mdto.getId());
		dto.setPc_writer_id(mdto.getId());
		dto.setPc_writer_nn(mdto.getNickname());
		dto.setSysprofname(mdto.getSysprofname());
		service.insertPostComment(dto);
	}

	// 포스트 댓글 삭제
	@ResponseBody
	@RequestMapping("deletePostComment")
	public void deletePostComment(int pc_seq) {

		String id = String.valueOf(session.getAttribute("loginID"));
		// session이랑 지우려는 댓글 아이디가 같을 때 는 프론트에서

		service.deletePostComment(pc_seq);
	}

	@GetMapping("selectSearchPostList")
	public String selectSearchPostList(String searchWord, Model model) {

		String id = String.valueOf(session.getAttribute("loginID"));

		// 회원정보 
		MemberDTO dto = mservice.selectMemberById(id);
		model.addAttribute("dto", dto);

		// 포스트 리스트
		List<PostDTO> list = service.selectSearchPostList(id, searchWord);
		model.addAttribute("list", list);

		// 포스트 좋아요 리스트
		List<PostLikeDTO> llist = service.selectPostLikeListById(id);
		model.addAttribute("llist", llist);
		System.out.println(llist.size());

		return "mybook/booknote/selectpostlist";

	}

	@RequestMapping(value="/uploadSummernoteImageFile", produces = "application/json; charset=utf8")
	@ResponseBody
	public String uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request )  {
		
		JsonObject jsonObject = new JsonObject();
		
		String realPath = session.getServletContext().getRealPath("resources/upload");
		File filePath = new File(realPath);
		if(!filePath.exists()) {filePath.mkdir();}
		
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		System.out.println(originalFileName);
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
//		if(extension.equals("png")||extension.equals("jpg")||extension.equals("jpeg")||extension.equals("gif")) {
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
		System.out.println(filePath);
		File targetFile = new File(filePath + "/" +savedFileName);	
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
			jsonObject.addProperty("url", "/resources/upload/"+savedFileName); 
			jsonObject.addProperty("responseCode", "success");
				
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
//		}
		String a = jsonObject.toString();
		return a;
	}



	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}

}
