package com.jinsu.japan.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jinsu.japan.domain.MemberVO;
import com.jinsu.japan.service.MemberServiceImpl;

@Controller
public class BoardController {
	
	@Autowired
	
	
	// 그냥 페이지 전송용
	@RequestMapping(value="/{url}.do")
	public String viewPage(@PathVariable String url) {
		
		return url;
	}
	
	
	
}
