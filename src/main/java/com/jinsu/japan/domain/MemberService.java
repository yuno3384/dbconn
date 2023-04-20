package com.jinsu.japan.domain;

import java.util.List;

public interface MemberService {
	
	// id중복 체크 : from 데이터 - VO --> VO --> return --> ajax
	public MemberVO checkId(MemberVO vo);
	// 정보 추가 : form 데이터 - VO --> int --> return 필요
	public int insertMember(MemberVO vo);
	// 로그인 확인 : form 데이터 -vo---> VO ---> return 완료 
	public MemberVO CheckMember(MemberVO vo);
	// 전체 정보 확인 : 확인 요청 ------> List -----> return List
	public List<MemberVO> showMemberList();
	// 개별 정보 확인 : 확인 요청 --id--> List -----> return List
	public MemberVO showMember(MemberVO vo);
	// 정보 수정 : 정보수정 form  -id,정보--> return int
	public int updateMember(MemberVO vo);
	// 정보 삭제: id,pw 요청 -id,pw--->  return int
	public int deleteMember(MemberVO vo);
	
}
