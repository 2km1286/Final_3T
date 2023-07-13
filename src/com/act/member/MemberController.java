package com.act.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController
{
	@RequestMapping("/memberlogin.action")
	public String MemberLoginCheck(HttpServletRequest req)
	{
		req.setAttribute("userId", req.getParameter("userId"));
		req.setAttribute("userPw", req.getParameter("userPw"));
		
		
		
		return "/MainPage.jsp";
	}
	
}
