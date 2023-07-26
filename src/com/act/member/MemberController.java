package com.act.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController
{
	@RequestMapping("/memberlogin.action")
	public String print(HttpServletRequest request)
	{
		String view = "/MainPage.jsp";
		
		request.setAttribute("userId", request.getParameter("userId"));
		request.setAttribute("userPw", request.getParameter("userPw"));
		
		return view;
	}
}
