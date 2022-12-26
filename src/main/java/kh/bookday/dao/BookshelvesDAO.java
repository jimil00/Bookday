package kh.bookday.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.bookday.dto.PostDTO;
import kh.bookday.dto.RentalDTO;
import kh.bookday.dto.WishlistDTO;

@Repository
public class BookshelvesDAO {
	
	@Autowired
	private SqlSession db;
	
	public List<RentalDTO> selectRentalListById(String id){
		return db.selectList("Bookshelves.selectRentalListById", id);
	}
	
	public List<WishlistDTO> selectWishlistListById(String id){
		return db.selectList("Bookshelves.selectWishlistListById", id);
	}
	
//	public List<PostDTO> selectPostListById(String id){
//		return db.selectList("Bookshelves.selectPostListById", id);
//	}
	
	public List<PostDTO> selectPostListById(HashMap<String, Object> data){
		return db.selectList("Bookshelves.selectPostListById", data);
	}

	public int selectPostCount() {
		return db.selectOne("Bookshelves.selectPostCount");
	}
}

