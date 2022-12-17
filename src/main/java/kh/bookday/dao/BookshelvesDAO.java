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
	
	public List<RentalDTO> selectAllRental(String id){
		return db.selectList("Bookshelves.selectAllRental", id);
	}
	
	public List<WishlistDTO> selectAllWishlist(String id){
		return db.selectList("Bookshelves.selectAllWishlist", id);
	}
}

