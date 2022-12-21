package kh.bookday.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.BookshelvesDAO;
import kh.bookday.dto.PostDTO;
import kh.bookday.dto.RentalDTO;
import kh.bookday.dto.WishlistDTO;

@Service
public class BookshelvesService {
	
	@Autowired
	private BookshelvesDAO dao;
	
	public List<RentalDTO> selectRentalListById(String id){
		return dao.selectRentalListById(id);
	}
	
	public List<WishlistDTO> selectWishlistListById(String id){
		return dao.selectWishlistListById(id);
	}
	
	public List<PostDTO> selectPostListById(String id){
		return dao.selectPostListById(id);
	}
}
