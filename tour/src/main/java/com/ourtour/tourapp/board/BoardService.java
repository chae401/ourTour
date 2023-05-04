package com.ourtour.tourapp.board;

import java.util.List;

public interface BoardService {
	int insert(BoardDTO board);
	public List<BoardDTO> select();
	public List<BoardDTO> select1();
	public List<BoardDTO> select2();
	public int delete(int boardNo);
	public BoardDTO read(int boardNo);
	public int update(BoardUpdateDTO board);
	public int insert(BoardDTO board, List<BoardFileDTO> filedtolist);
	public List<BoardFileDTO> readFile(int boardNo);
}
