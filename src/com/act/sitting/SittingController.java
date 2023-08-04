package com.act.sitting;

import java.util.ArrayList;

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
	public String sittingList(Model model)
	{
		String view = "";
		
		ArrayList<SittingDTO> list = sittingService.list();

		model.addAttribute("list", list);
		
		view = "/WEB-INF/views/SittingListPage.jsp";
		return view;
	}

}
