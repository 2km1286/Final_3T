package com.act.walk;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.act.walk.IWalkDAO;
import com.act.walk.WalkDTO;

@Service
public class WalkService
{
	@Autowired
	private SqlSession sqlSession;

	// 대리산책러의 정보를 리스트로 가져오기
	public ArrayList<WalkDTO> list() {
		ArrayList<WalkDTO> list = new ArrayList<WalkDTO>();

		IWalkDAO dao = sqlSession.getMapper(IWalkDAO.class);
		list = dao.list();

		return list;
	}

	// 대리산책 범례태그 리스트 가져오기
	public ArrayList<WalkDTO> IndexTagList() {
		ArrayList<WalkDTO> IndexTagList = new ArrayList<WalkDTO>();

		IWalkDAO dao = sqlSession.getMapper(IWalkDAO.class);
		IndexTagList = dao.IndexTagList();

		return IndexTagList;
	}

	/*
	 * // 대리산책러 등급과 기본가격 정보 public ArrayList<SittingDTO> gradeList() {
	 * ArrayList<SittingDTO> grade = new ArrayList<SittingDTO>();
	 * 
	 * ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class); grade =
	 * dao.gradeList();
	 * 
	 * return grade; }
	 */

}
