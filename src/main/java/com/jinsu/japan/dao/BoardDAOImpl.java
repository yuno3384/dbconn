package com.jinsu.japan.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jinsu.japan.domain.BoardService;
import com.jinsu.japan.domain.BoardVO;

@Repository("boardDAO")
public class BoardDAOImpl implements BoardService{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public BoardVO showBoardList(BoardVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertBoard(BoardVO vo) {
		return mybatis.insert("BoardDAO.insertBoard",vo);
	}

	@Override
	public BoardVO showBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
