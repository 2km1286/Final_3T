package com.act.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.HttpServerErrorException;


@Controller
public class MemberController
{	
	@Autowired
	private MemberService memberService;
	
	/*
	 * @RequestMapping("/memberlogin.action") public String print(HttpServletRequest
	 * request) { //String view = "/MainPage.jsp";
	 * 
	 * String view = "redirect:LoginForm.jsp";
	 * 
	 * request.setAttribute("userId", request.getParameter("userId"));
	 * request.setAttribute("userPw", request.getParameter("userPw"));
	 * 
	 * return view; }
	 */
	
	/*
	 * @RequestMapping(value="/memberjoin.action", method=RequestMethod.POST) public
	 * String memberJoin(HttpSession session, MemberDTO dto) {
	 * memberService.join(session, dto);
	 * 
	 * return "redirect:/membermain"; }
	 */
	
	@RequestMapping("/join.action")
	public String join(HttpSession session, MemberDTO dto)
	{
	   String result = "";
	     
	   memberService.join(session, dto);
	      
	      
	   result = "redirect:LoginForm.jsp";
	   return result;
	 }
	
	
	@RequestMapping("/idCheck.action")
	public String duplicatedId(HttpServletRequest request)
	{
		String view = "";
		
		String jmId = request.getParameter("jmId");
		int result = memberService.checkId(jmId);
		System.out.println(result); 
		
		request.setAttribute("result", result);
		
		
		view = "/WEB-INF/views/SearchId.jsp";
		
		return view;
	}
	   
	
	   @RequestMapping("/main.action")
	   public String main()
	   {
	      String result = "MenuForm3.jsp";
	      return result;
	   }
	
}
