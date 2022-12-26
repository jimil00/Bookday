package kh.bookday.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.bookday.dto.RentalDTO;

@Repository
public class RentalDAO {

	@Autowired
	private SqlSession db;
	
	public List<RentalDTO> selectRentalListById(String id){
		return db.selectList("Rental.selectRentalListById", id);
	}
}
