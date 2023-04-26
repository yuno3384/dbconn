package com.jinsu.japan.domain;

import lombok.Data;

@Data
public class BoardVO {
	// create table boards
	private int b_id;					// 게시글 고유번호
	private String b_writer;			// 게시글 작성자 : 회원이 입력한  이름
	private String b_title;				// 게시글 제목
	private String b_content;			// 게시글 내용
	private String b_pwd;				// 게시글 수정과 삭제 목적의 비밀번호
	private String b_date;				// 게시글 게재 날짜

	// 파일 저장 방법
	private String b_fname;
	private String b_fname_en;
	private long b_fsize;

	
	
	
}
