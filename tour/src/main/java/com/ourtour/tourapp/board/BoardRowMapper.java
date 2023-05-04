package com.ourtour.tourapp.board;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class BoardRowMapper implements RowMapper<BoardDTO>{

	@Override
	public BoardDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		BoardDTO board= new BoardDTO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),
				rs.getString(5),rs.getString(6), rs.getInt(7),rs.getInt(8));
		return board;
	}

}
