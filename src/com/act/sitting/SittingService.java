package com.act.sitting;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class SittingService implements ISittingService
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

	/*
	 * // 펫시터의 등급과 기본가격 정보 public ArrayList<SittingDTO> gradeList(SittingDTO dto) {
	 * ArrayList<SittingDTO> grade = new ArrayList<SittingDTO>();
	 * System.out.println("petmemsid : " + dto.getPmemSid()); ISittingDAO dao =
	 * sqlSession.getMapper(ISittingDAO.class); grade = dao.gradeList();
	 * 
	 * return grade; }
	 */

	// 해당 돌봄장소의 태그들 가져오기
	
	  public ArrayList<SittingDTO> tagList() 
	  { 
		  ArrayList<SittingDTO>
		  tagList = new ArrayList<SittingDTO>();
		  
		  ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		  
		  tagList = dao.tagList();
		  
		  return tagList; 
	  }
	  
	 


	// 회원의 STS(시험제출번호) 유무(상태) 반환
	public int sittingStsCount(SittingDTO dto)
	{
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		System.out.println("1번 sittingStsCount");
		int result = dao.stsCount(dto);
		System.out.println("2번 sittingStsCount: " + result);
		return result;
	}

	// 회원의 SL(펫시팅면허번호) 유무(상태) 반환
	public int sittingSlCount(SittingDTO dto)
	{
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		System.out.println("3번 sittingSlCount");
		int result = dao.slCount(dto);
		System.out.println("4번 sittingSlCount: " + result);
		return result;
	}


	
	// 펫시터의 예약 내역 정보 가져오기
	public ArrayList<SittingDTO> booklist(String memSid)
	{
		ArrayList<SittingDTO> bookList = new ArrayList<SittingDTO>();
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		bookList = dao.booklist(memSid);
		
		/*
		 * for (SittingDTO sitting : bookList) { System.out.println("SBSID: " +
		 * sitting.getSbSid()); System.out.println("SBSTART: " + sitting.getSbStart());
		 * System.out.println("SBEND: " + sitting.getSbEnd());
		 * System.out.println("SBPRICE: " + sitting.getSbPrice());
		 * System.out.println("PMEMSID: " + sitting.getPmemSid()); }
		 */
		return bookList;
	}
	
	// 펫시팅 리스트 검색조건 리스트  반환
	public ArrayList<SittingDTO> sittingFilterList(SittingDTO dto)
	{
		ArrayList<SittingDTO> filterlist = new ArrayList<SittingDTO>();
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		filterlist = dao.spfilterlist(dto);
		
		System.out.println("filterlist : " + filterlist);
		
		return filterlist;
	}

}
