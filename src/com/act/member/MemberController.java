package com.act.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController
{
	@Autowired
	private MemberService memberService;
	
	/*
	@RequestMapping("/memberlogin.action")
	public String print(HttpServletRequest request)
	{
		String view = "/MainPage.jsp";
		
		request.setAttribute("userId", request.getParameter("userId"));
		request.setAttribute("userPw", request.getParameter("userPw"));
		
		return view;
	}
	*/
	
	@RequestMapping("/join.action")
	public String join(HttpSession session, MemberDTO dto)
	{
		String result = "";
		int num = memberService.join(session, dto);
		
		
		if(num!=1)
			result = "redirect:join.action";
		else
			result = "redirect:main.action"; 
		
		
		return result;
	}
	
	@RequestMapping("/main.action")
	public String main()
	{
		String result = "/WEB-INF/views/MainPage.jsp";
		return result;
	}
	
}
