package com.jinsu.japan.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jinsu.japan.domain.BoardVO;
import com.jinsu.japan.service.BoardServiceImpl;


@Controller
public class BoardController {
	
	@Autowired
	private BoardServiceImpl boardService;

	// ------------------- 특수 전송용 -----------
	
	@RequestMapping(value="saveBoard.do")
	public String saveBoard(BoardVO vo) {
		System.out.println("게시물 제목 :"+vo.getB_title() );
		
		return "";
	}
}
