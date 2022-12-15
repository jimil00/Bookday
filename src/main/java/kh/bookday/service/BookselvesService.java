package kh.bookday.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.BookselvesDAO;
import kh.bookday.dto.RentalDTO;
import kh.bookday.dto.WishlistDTO;

@Service
public class BookselvesService {
	
	@Autowired
	private BookselvesDAO dao;
	
	public List<RentalDTO> selectOnesRentalBooks(String id){
		return dao.selectOnesRentalBooks(id);
	}
	
	public List<WishlistDTO> selectOnesWishlistBooks(String id){
		return dao.selectOnesWishlistBooks(id);
	}
}
