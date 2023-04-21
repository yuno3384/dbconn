package com.jinsu.japan.service;

import org.springframework.stereotype.Service;

import com.jinsu.japan.domain.BoardService;
import com.jinsu.japan.domain.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{

	@Override
	public BoardVO showBoardList(BoardVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public BoardVO showBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateMember(BoardVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMember(BoardVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
