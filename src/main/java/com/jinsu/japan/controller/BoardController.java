package com.jinsu.japan.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jinsu.japan.domain.BoardVO;
import com.jinsu.japan.domain.MemberVO;
import com.jinsu.japan.service.BoardServiceImpl;
import com.jinsu.japan.service.MemberServiceImpl;

@Controller
public class BoardController {
	
	@Autowired
	private BoardServiceImpl boardService;
	
	// 그냥 페이지 전송용
	@RequestMapping(value="/{step}.do")
	public String viewBoardPage(@PathVariable String step) {
		
		return step;
	}
	
	// ------------------- 특수 전송용 -----------
	
	@RequestMapping(value="saveBoard.do")
	public String saveBoard(BoardVO vo) {
		
		return "Main.do";
	}
}
