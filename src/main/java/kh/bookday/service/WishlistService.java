package kh.bookday.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.WishlistDAO;
import kh.bookday.dto.WishlistDTO;

@Service
public class WishlistService {
	
	@Autowired
	private WishlistDAO dao;
	
	public List<WishlistDTO> selectWishlistListById(String id){
		return dao.selectWishlistListById(id);
	}
}
