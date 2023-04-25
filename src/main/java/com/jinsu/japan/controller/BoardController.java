package com.jinsu.japan.controller;



import java.util.Arrays;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jinsu.japan.domain.BoardVO;
import com.jinsu.japan.service.BoardServiceImpl;


@Controller
public class BoardController {
	
	@Autowired
	private BoardServiceImpl boardService;

	// ------------------- 특수 전송용 -----------
	
	@RequestMapping(value="saveBoard.do")
	public String saveBoard(BoardVO vo,HttpSession session, Model model) {
		System.out.println("게시물 제목 :"+vo.getB_title() );
		vo.setB_writer((String)session.getAttribute("userName"));
		System.out.println("게시자명 :"+vo.getB_writer() );
//		System.out.println("게시글내용 :"+vo.getB_content() );
		String content = vo.getB_content().substring(3,vo.getB_content().indexOf("</"));
		
		vo.setB_content(content);
		
		int result = boardService.insertBoard(vo);
		model.addAttribute("result",result);
		return "../../index";
	}
}
