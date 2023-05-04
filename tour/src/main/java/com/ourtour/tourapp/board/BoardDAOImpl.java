package com.ourtour.tourapp.board;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ParameterizedPreparedStatementSetter;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	JdbcTemplate template;
	
	@Override
	public int insert(BoardDTO board) {
		String sql = "insert into board values(null,?,?,?,?,sysdate(),?,?)";
		
		return template.update(sql, board.getCategory(), board.getTitle(), board.getUserID(),board.getContent(),0, 0);
	}

	@Override
	public List<BoardDTO> select() {
		return template.query("select * from board where category='자유게시판'", new BoardRowMapper());
	}
	@Override
	public List<BoardDTO> select1() {
		return template.query("select * from board where category='후기게시판'", new BoardRowMapper());
	}

	@Override
	public List<BoardDTO> select2() {
		return template.query("select * from board where category='질문게시판'", new BoardRowMapper());
	}
	@Override
	public int delete(int boardNo) {
		return template.update("delete from board where boardNo=?",boardNo);
	}

	@Override
	public BoardDTO read(int boardNo) {
		return template.queryForObject("select * from board where boardno = ? ", new Object[] {boardNo}, new BoardRowMapper());
	}
	@Override
	public int update(BoardUpdateDTO board) {
		String sql = "update board set title=?, content=?, category=? where boardno=?";
		
		return template.update(sql, board.getTitle(), board.getContent(), board.getCategory(), board.getBoardNo());
	}

	@Override
	public int insertFile(List<BoardFileDTO> boardfiledtolist) {
		String sql = "insert into boardimage_file values(last_insert_id(),?,?,?)";
		template.batchUpdate(sql, boardfiledtolist, boardfiledtolist.size(),
			new ParameterizedPreparedStatementSetter<BoardFileDTO>() {
				@Override
				public void setValues(PreparedStatement ps, BoardFileDTO filedto) throws SQLException {
					ps.setString(1, filedto.getOriginalFilename());
					ps.setString(2, filedto.getStoreFilename());
					ps.setInt(3, filedto.getImageFileno());
				}		
			});
			
		return 0;
	}

	@Override
	public List<BoardFileDTO> readFile(int boardNo) {
		String sql = "select * from boardimage_file where boardno=?";
		return template.query(sql, new Object[] {boardNo}, new FileRowMapper());
	}

}
