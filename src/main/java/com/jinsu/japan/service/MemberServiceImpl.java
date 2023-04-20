package com.jinsu.japan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jinsu.japan.dao.MemberDAO;
import com.jinsu.japan.domain.MemberService;
import com.jinsu.japan.domain.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public int insertMember(MemberVO vo) {
		
		return memberDAO.insertMember(vo);
	}

	@Override
	public List<MemberVO> showMemberList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO showMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberVO CheckMember(MemberVO vo) {
		
		return memberDAO.CheckMember(vo);
	}

	@Override
	public MemberVO checkId(MemberVO vo) {
		
		return memberDAO.checkId(vo);
	}

}
