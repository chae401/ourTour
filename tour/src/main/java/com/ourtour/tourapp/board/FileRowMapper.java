package com.ourtour.tourapp.board;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class FileRowMapper implements RowMapper<BoardFileDTO>{

	@Override
	public BoardFileDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		BoardFileDTO file = new BoardFileDTO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4));
		return file;
	}

}
