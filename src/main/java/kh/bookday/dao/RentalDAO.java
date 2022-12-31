package kh.bookday.dao;

import java.util.List;
import java.util.Map;

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
	
	// 대여 테이블 입력
	public void insertRental(RentalDTO dto) {
		db.insert("Rental.insertRental", dto);
	}
	
	// 방금 대여한 책 리스트 출력
	public List<RentalDTO> selectRentalListByIdRownum (Map<String, Object> param) {
		return db.selectList("Rental.selectRentalListByIdRownum", param);
	}

}
