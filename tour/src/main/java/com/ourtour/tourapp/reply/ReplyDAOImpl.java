package com.ourtour.tourapp.reply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAOImpl implements ReplyDAO {

	@Autowired
	JdbcTemplate template;
	
	@Override
	public List<ReplyDTO> select(int boardNo) {
		String sql = "select * from reply where boardno=?";
		return template.query(sql, new Object[] {boardNo}, new RepRowMapper());
	}

	@Override
	public int insert(ReplyDTO rep) {
		String sql = "insert into reply values(null,?,sysdate(),?,?)";
		
		return template.update(sql, rep.getBoardNo(),rep.getText(), rep.getUserID());
	}

	@Override
	public int delete(int replyNo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
