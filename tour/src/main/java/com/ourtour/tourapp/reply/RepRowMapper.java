package com.ourtour.tourapp.reply;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
public class RepRowMapper implements RowMapper<ReplyDTO>{
	@Override
	public ReplyDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		ReplyDTO rep = new ReplyDTO(rs.getInt(1), rs.getInt(2), rs.getString(3),rs.getString(4),rs.getString(5));
		return rep;
	}
	
}
