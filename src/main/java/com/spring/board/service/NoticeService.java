package com.spring.board.service;

import java.util.List;

import com.spring.board.dto.NoticeVO;

public interface NoticeService {
	
	// 작성
	public void write(NoticeVO vo) throws Exception;

	// 리스트
	public List<NoticeVO> noticeList() throws Exception;
	
	// 조회
	public NoticeVO read(int bno) throws Exception;

	// 수정
	public void update(NoticeVO vo) throws Exception;

	// 삭제
	public void delete(int bno) throws Exception;
}
