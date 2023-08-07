package com.act.sitting;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class SittingService
{
	@Autowired
	private SqlSession sqlSession;
	
	// 펫시터의 정보를 리스트로 가져오기
	public ArrayList<SittingDTO> list()
	{
		ArrayList<SittingDTO> list = new ArrayList<SittingDTO>();
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		list = dao.list();
		
		return list;
	}
	
	// 펫시터 돌봄장소 범례태그 리스트 가져오기
	public ArrayList<SittingDTO> IndexTagList()
	{
		ArrayList<SittingDTO> IndexTagList = new ArrayList<SittingDTO>();
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		IndexTagList = dao.IndexTagList();
		
		return IndexTagList;
	}
	
	// 펫시터의 등급과 기본가격 정보 
	public ArrayList<SittingDTO> gradeList()
	{
		ArrayList<SittingDTO> grade = new ArrayList<SittingDTO>();
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		grade = dao.gradeList();
		
		return grade;
	}
	
	// 해당 돌봄장소의 태그들 가져오기
	/*
	 * public ArrayList<SittingDTO> tagList(SittingDTO s) { ArrayList<SittingDTO>
	 * tagList = new ArrayList<SittingDTO>();
	 * 
	 * ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
	 * 
	 * tagList = dao.tagList(s.getMemSid());
	 * 
	 * return tagList; }
	 */
	
}
