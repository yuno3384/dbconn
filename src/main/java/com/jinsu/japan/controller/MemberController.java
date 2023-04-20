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
public class MemberController {
	
	@Autowired
	private MemberServiceImpl memberService;
	
	// 그냥 페이지 전송용
	@RequestMapping(value="/{url}.do")
	public String viewPage(@PathVariable String url) {
		
		return url;
	}
	//--------------- 특수 전송용 --------------------
	@RequestMapping(value="index.do")
	public String backToHome() {
		return "../../index";
	}
	
	@RequestMapping(value="insert.do")
	public String insertMember(MemberVO vo) {
		String email = vo.getM_email_id()+"@"+vo.getM_email_site();
		vo.setM_email(email);
		int result = memberService.insertMember(vo);
		
		if(result != 0) {
			return "redirect:/login.do";			
		}else {
			
			return "redirect:/Signup.do";
		}
		
	}
	
	
	@RequestMapping(value="check.do")
	public String checkMember(MemberVO vo, HttpSession session) {
		String email = vo.getM_email_id()+"@"+vo.getM_email_site();
		vo.setM_email(email);
		MemberVO result = memberService.CheckMember(vo);
		
		if(result == null) {
			return "redirect:/login.do";
		}else {
			System.out.println("userId :"+result.getM_email());
			System.out.println("userName :"+result.getM_name());
			
			session.setAttribute("userId", result.getM_email());
			session.setAttribute("userName", result.getM_name());
			return "../../index";
		}
	}
	
	@RequestMapping(value="checkId.do", produces = "application/text; charset=utf8")
	@ResponseBody 
	public String checkId(MemberVO vo) {
		
		System.out.println("ajax접근");
//		System.out.println(vo.getM_email());
//		System.out.println(vo.getM_name());
//		System.out.println(vo.getM_birthday());
		
		// 데이터베이스 조회
		MemberVO resultVO = memberService.checkId(vo);
		
		String result = "ID가 사용가능합니다.";
		if(resultVO != null) result = "ID가 이미 있습니다.";		
		
		return result;
	}
	
	
}
