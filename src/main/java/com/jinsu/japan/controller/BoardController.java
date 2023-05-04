package com.jinsu.japan.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.jinsu.japan.domain.BoardVO;
import com.jinsu.japan.service.BoardServiceImpl;

@Controller
public class BoardController {

	@Autowired
	private BoardServiceImpl boardService;

	// ------------------- 특수 전송용 -----------

	@RequestMapping(value = "saveBoard.do")
	public String saveBoard(BoardVO vo, HttpSession session) {
		System.out.println("게시물 제목 :" + vo.getB_title());
		vo.setB_writer((String) session.getAttribute("userName"));
		System.out.println("게시자명 :" + vo.getB_writer());
//		System.out.println("게시글내용 :"+vo.getB_content() );
		String content = vo.getB_content().substring(3, vo.getB_content().indexOf("</"));

		vo.setB_content(content);

		int result = boardService.insertBoard(vo);

		return "../../index";
	}

	@RequestMapping(value="savemodal.do")
	public String saveBoard() {
		return "../../savemodal";
	}
	
	@RequestMapping(value="getBoardList.do")
	public String getBoardList(Model model) {
		List<BoardVO> bList = boardService.getBoardList();
		model.addAttribute("boardList",bList);
		return "boardList";
	}
	
	@RequestMapping(value="showBoard.do")
	public String getBoard(BoardVO vo, Model model) {
		BoardVO result = boardService.showBoard(vo);
		model.addAttribute("board",result);
		return "showBoard";
	}
	@RequestMapping(value="editBoard.do")
	public String editBoard(BoardVO vo, Model model) {
		BoardVO result = boardService.showBoard(vo);
		model.addAttribute("board",result);
		return "editBoard";
	}
	@RequestMapping(value="updateBoard.do")
	public String updateBoard(BoardVO vo, Model model) {
		boardService.updateBoard(vo);
//		model.addAttribute("board",result);
		return "redirect:/getBoardList.do";
	}
	
}
