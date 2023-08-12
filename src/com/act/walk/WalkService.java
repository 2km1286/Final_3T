package com.act.walk;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.act.sitting.ISittingDAO;
import com.act.sitting.SittingDTO;
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

	
	 // 대리산책러 등급과 기본가격 정보 public ArrayList<SittingDTO> gradeList() {
	public ArrayList<WalkDTO> gradeList()
	{
		ArrayList<WalkDTO> grade = new ArrayList<WalkDTO>();
		
		IWalkDAO dao = sqlSession.getMapper(IWalkDAO.class);
		grade = dao.gradeList();
		
		return grade;
	}
	 
	// 오늘 대리산책 예약 취소된 건이 있는지 카운팅
	public int walkCancelNotice(String memSid)
	{
		int result = 0;
		
		IWalkDAO dao = sqlSession.getMapper(IWalkDAO.class);
		dao.walkCancelNotice(memSid);
		
		return result;
	}
	
	// 오늘 대리산책 후기 달린 건이 있는지 카운팅
	public int walkReviewNotice(String memSid)
	{
		int result = 0;
		
		IWalkDAO dao = sqlSession.getMapper(IWalkDAO.class);
		dao.walkReviewNotice(memSid);
		
		return result;
	}
	
	// 오늘 대리산책 공고글 반려당한 건수
	public int walkCompanionNotice(String memSid)
	{
		int result = 0;
		
		IWalkDAO dao = sqlSession.getMapper(IWalkDAO.class);
		dao.walkCompanionNotice(memSid);
		
		return result;
	}
	
	// 견주입장에서 본인이 오늘 결제한 대리산책의 시작일 ~ 종료일 
	public ArrayList<WalkDTO> walkStartEndNotice(String memSid)
	{
		ArrayList<WalkDTO> result = new ArrayList<WalkDTO>();
		
		IWalkDAO dao = sqlSession.getMapper(IWalkDAO.class);
		dao.walkStartEndNotice(memSid);
		
		return result;
	}
	
	
	
}
