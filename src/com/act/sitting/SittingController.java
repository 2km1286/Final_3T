package com.act.sitting;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SittingController
{
	@Autowired
	private SittingService sittingService;


	// 펫시팅(돌봄장소) 리스트업 페이지로 가기
	@RequestMapping("/sittingList.action")
	public String sittingList(Model model, SittingDTO s)
	{
		String view = "";
		
		model.addAttribute("list", sittingService.list());
		model.addAttribute("IndexTagList", sittingService.IndexTagList());
		model.addAttribute("gradeList", sittingService.gradeList());
		//model.addAttribute("tagList", sittingService.tagList(s));
		
		
		//System.out.println("list: " + sittingService.list());
		//System.out.println("tagList: " + sittingService.tagList());
		//System.out.println("gradeList: " + sittingService.gradeList());
		
		view = "/WEB-INF/views/SittingListPage.jsp";
		return view;
	}

}
