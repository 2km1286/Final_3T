package com.act.walk;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.act.sitting.ISittingDAO;
import com.act.sitting.SittingDTO;
import com.act.walk.IWalkDAO;
import com.act.walk.WalkDTO;

@Service
public class WalkService implements IWalkService
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
	 
	
	// 대리산책러의 자격번호가 있는 유저만 대리산책러 공고글을 등록
	public WalkDTO getWalkerLicenseNumber(String memSid)
	{
	
		WalkDTO dto = new WalkDTO();
		IWalkDAO dao = sqlSession.getMapper(IWalkDAO.class);
		
		
		dto = dao.getWalkerLicenseNumber(memSid);
		
		// 현재 날짜와 시간을 받아옴
		
		// 오늘 공고글을 썼다면 게시글을 쓰지 못하도록 해야함
		// 글쓴 뒤 24시간으로부터 
		
		return dto;
	}
	
	
	@Transactional
	public boolean postInsert(WalkDTO dto)
	{
		IWalkDAO dao = sqlSession.getMapper(IWalkDAO.class);
		
		try
		{
			// 사진 저장 로직
			String wppname = dto.getWppname();
			String wpppath = dto.getWpppath();
			//MultipartFile file = dto.getFile();
			
			// 파일 처리 로직
			//String fileName = file.getOriginalFilename();
		    //File destination = new File(wpppath + fileName);
		    //file.transferTo(destination);
		    
			
			// 멤버의 라이센스 가져오기
			WalkDTO mem = dao.getWalkerLicenseNumber(dto.getMemSid()); 
			dto.setWlsid(mem.getWlsid());
		    
		    // 1. insert되고 max로 가져오면 그게 최신?
		    dao.insertPost(dto); 
		    
		    
		    // select로 게시글 번호 가져오기
		    int wpsid = dao.selectWpsid();
		    
		    
		    // 2.이미지 저장
		    dto.setWpppath(wpppath);
		    dto.setWpsid(wpsid);
		    dto.setWppname(wppname);
		    dao.insertPostPhoto(dto);
		    
		    
		    // 3. 어필태그 저장 로직
		    List<String> selectedTags = dto.getSelectedTags();
		    for (String tagId : selectedTags) 
		    {
		    	dto.setWpsid(wpsid);
		    	dto.setIwptsid(Integer.parseInt(tagId));
		    	dao.insertWalkPostTag(dto);
		    }

		    return true;
			
		} catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		
	}
	
	@Transactional
	public ArrayList<QuestionDTO> questionList()
	{
		ArrayList<QuestionDTO> questionList = new ArrayList<>();
		IWalkDAO dao = sqlSession.getMapper(IWalkDAO.class);
		
		// 대리산책 문제은행에서 문제 10개를 뽑아오기
		questionList = dao.questionList();
		
		// 대리산책러 약관동의를 누르면 대리산책러 접수번호가 생성
		
		
		// 접수번호를 가져옴
		
		
		
		// 대리산책 문제지 테이블에 insert
		//dao.addQuestion(wtrsid, questionList);
		
		return questionList;
	}
	
	

}
