package kh.bookday.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PostLikeDAO {

	@Autowired
	private SqlSession db;
	
	public boolean selectPostLListByPseq(Map<String, Object> param) {
		return db.selectOne("PostLike.selectPostLListByPseq", param);
	}

}
