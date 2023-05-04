package com.ourtour.tourapp.board;

import java.util.List;

public interface BoardDAO {
	int insert(BoardDTO board);
	public List<BoardDTO> select();
	public List<BoardDTO> select1();
	public List<BoardDTO> select2();
	public int delete(int boardNo);
	public BoardDTO read(int boardNo);
	public int update(BoardUpdateDTO board);
	int insertFile(List<BoardFileDTO> boardfiledtolist);
	List<BoardFileDTO> readFile(int boardNo);
}
