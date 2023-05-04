package com.ourtour.tourapp.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardDAOImpl dao;

	@Override
	public int insert(BoardDTO board) {
		return dao.insert(board);
	}

	@Override
	public List<BoardDTO> select() {
		return dao.select();
	}
	
	@Override
	public List<BoardDTO> select1() {
		return dao.select1();
	}

	@Override
	public List<BoardDTO> select2() {
		return dao.select2();
	}

	@Override
	public int delete(int boardNo) {
		return dao.delete(boardNo);
	}

	@Override
	public BoardDTO read(int boardNo) {
		return dao.read(boardNo);
	}

	@Override
	public int update(BoardUpdateDTO board) {
		return dao.update(board);
	}
	@Transactional(rollbackFor = Exception.class)
	@Override
	public int insert(BoardDTO board, List<BoardFileDTO> filedtolist) {
		dao.insert(board);
		dao.insertFile(filedtolist);
		return 0;
	}

	@Override
	public List<BoardFileDTO> readFile(int boardNo) {
		return dao.readFile(boardNo);
	}

}
