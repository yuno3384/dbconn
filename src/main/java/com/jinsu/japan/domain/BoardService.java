package com.jinsu.japan.domain;

import java.util.List;

public interface BoardService {
	
	// 게시판 목록 : from 데이터 - VO --> VO --> return --> ajax
	public BoardVO showBoardList(BoardVO vo);
	// 게시글 추가 : form 데이터 - VO --> int --> return 필요
	public int insertBoard(BoardVO vo);
	// 게시글 확인 : form 데이터 -vo---> VO ---> return 완료 
	public BoardVO showBoard(BoardVO vo);
	// 정보 수정 : 정보수정 form  -id,pw--> return int
	public int updateBoard(BoardVO vo);
	// 정보 삭제: id,pw 요청 -id,pw --->  return int
	public int deleteBoard(BoardVO vo);
	
}
