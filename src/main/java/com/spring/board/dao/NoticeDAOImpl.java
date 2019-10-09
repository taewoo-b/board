package com.spring.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.board.dto.NoticeVO;

@Repository
public class NoticeDAOImpl implements NoticeDAO {

	// 마이바티스
	@Inject
	private SqlSession sql;

	// 매퍼
	private static String namespace = "com.spring.board.mappers.noticeMapper";

	// 작성
	@Override
	public void write(NoticeVO vo) throws Exception {
		sql.insert(namespace + ".write", vo);
	}
	// 조회

	@Override
	public NoticeVO read(int bno) throws Exception {
		return sql.selectOne(namespace + ".read", bno);
	}

	// 수정
	@Override
	public void update(NoticeVO vo) throws Exception {
		sql.update(namespace + ".update", vo);
	}

	// 삭제
	@Override
	public void delete(int bno) throws Exception {
		sql.delete(namespace + ".delete", bno);
	}

	@Override
	public List<NoticeVO> noticeList() throws Exception {
		return sql.selectList(namespace + ".noticeList");
	}
}
