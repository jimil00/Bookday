package kh.bookday.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.bookday.dto.WishlistDTO;

@Repository
public class WishlistDAO {

	@Autowired
	private SqlSession db;
	
	public List<WishlistDTO> selectWishlistListById(String id){
		return db.selectList("Wishlist.selectWishlistListById", id);
	}
}
