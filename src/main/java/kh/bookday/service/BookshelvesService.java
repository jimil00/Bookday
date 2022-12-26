package kh.bookday.service;

import java.util.HashMap;
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
	
//	public List<PostDTO> selectPostListById(String id){
//		return dao.selectPostListById(id);
//	}
	
    public List<PostDTO> selectPostListById(String id, int count) {

        if (dao.selectPostCount() < (count * 20) + 1) {
            return null;
        }

        HashMap<String, Object> data = new HashMap<>();
        data.put("min", (count * 20) + 1);
        data.put("max", (count * 20) + 20);
        data.put("id", id);

        return dao.selectPostListById(data);
    }
}
