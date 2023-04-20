package com.jinsu.japan.domain;

import lombok.Data;

@Data
public class MemberVO {
	// create table member
	private int m_no;					// 회원고유번호
	private String m_email_id;			// 회원이 입력한  email계정 앞부분
	private String m_email_site;		// 회원이 입력한  email계정 뒷부분
	private String m_email;             // DB전용 이메일 합성
	private String m_pwd;				// 회원이 입력한  비번
	private String m_name;				// 회원이 입력한  이름
	private String m_birthday;			// 회원이 입력한 생년월일
	
	
	
	
}
