package com.spring.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.board.dao.NoticeDAO;
import com.spring.board.dto.NoticeVO;
@Service
public class NoticeServiceImpl  implements NoticeService{
	@Inject
	private NoticeDAO dao;

	// 작성 
	@Override
	public void write(NoticeVO vo) throws Exception {
		dao.write(vo);		
	}
	
	// 리스트
	@Override
	public List<NoticeVO> noticeList() throws Exception {
		return dao.noticeList();
	}
	
	// 조회
	@Override
	public NoticeVO read(int bno) throws Exception {
		return dao.read(bno);
	}
	
	// 수정 
	@Override
	public void update(NoticeVO vo) throws Exception {
		dao.update(vo);
	}

	// 삭제
	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);		
	}
}
