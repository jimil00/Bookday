package kh.bookday.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.MemberDAO;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO dao;
}
