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
	public ArrayList<SittingDTO> tagList()
	{
		ArrayList<SittingDTO> tagList = new ArrayList<SittingDTO>();
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		tagList = dao.tagList();
		
		return tagList;
	}
	
}
