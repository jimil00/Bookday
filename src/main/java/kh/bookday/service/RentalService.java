package kh.bookday.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.RentalDAO;
import kh.bookday.dto.RentalDTO;

@Service
public class RentalService {

	@Autowired
	private RentalDAO dao;
	
	public List<RentalDTO> selectRentalListById(String id){
		return dao.selectRentalListById(id);
	}
}
