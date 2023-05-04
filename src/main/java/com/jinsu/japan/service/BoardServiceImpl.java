package com.jinsu.japan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jinsu.japan.dao.BoardDAOImpl;
import com.jinsu.japan.domain.BoardService;
import com.jinsu.japan.domain.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDAOImpl boardDAO;
	
	@Override
	public BoardVO showBoardList(BoardVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertBoard(BoardVO vo) {
		
		return boardDAO.insertBoard(vo);
	}

	@Override
	public BoardVO showBoard(BoardVO vo) {
		
		return boardDAO.showBoard(vo);
	}

	@Override
	public int updateBoard(BoardVO vo) {
		
		return boardDAO.updateBoard(vo);
	}

	@Override
	public int deleteBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<BoardVO> getBoardList() {
		// TODO Auto-generated method stub
		return boardDAO.getBoardList();
	}

}
