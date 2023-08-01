package com.act.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
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
		System.out.println("확인1");
		memberService.join(session, dto);
		System.out.println("확인2");
		result = "/WEB-INF/views/MainPage.jsp";
		return result;
	}
	
	@RequestMapping("/main.action")
	public String main()
	{
		String result = "MenuForm3.jsp";
		return result;
	}
	
}
