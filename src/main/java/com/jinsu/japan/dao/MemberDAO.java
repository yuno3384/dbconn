package com.jinsu.japan.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jinsu.japan.domain.MemberService;
import com.jinsu.japan.domain.MemberVO;

@Repository("memberDAO")
public class MemberDAO implements MemberService{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public int insertMember(MemberVO vo) {
		return mybatis.insert("MemberDAO.insertMember",vo);
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
		
		return mybatis.selectOne("MemberDAO.checkMember",vo);
	}
	
	@Override
	public MemberVO checkId(MemberVO vo) {
		
		return mybatis.selectOne("MemberDAO.checkMember",vo);
	}

}
