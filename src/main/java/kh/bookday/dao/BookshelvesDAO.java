package kh.bookday.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.bookday.dto.RentalDTO;
import kh.bookday.dto.WishlistDTO;

@Repository
public class BookshelvesDAO {
	
	@Autowired
	private SqlSession db;
	
	public List<RentalDTO> selectOnesRentalBooks(String id){
		return db.selectList("Bookshelves.selectOnesRentalBooks", id);
	}
	
	public List<WishlistDTO> selectOnesWishlistBooks(String id){
		return db.selectList("Bookshelves.selectOnesWishlistBooks", id);
	}
}

