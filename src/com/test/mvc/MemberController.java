/*==================================
   HelloController.java
   - 사용자 정의 컨트롤러 클래스
==================================*/

package com.test.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

// ※ Spring MVC 의 『Controller』 인터페이스를 구현하는 방법을 통해
//    사용자 정의 컨트롤러 클래스를 구성한다.

@Controller
public class MemberController 
{
	@RequestMapping("/login.action")
	public String loginPage()
	{
		String result="";
		
		result = "/WEB-INF/views/LoginPage.jsp";
		
		return result;
		
	}
	@RequestMapping("/main.action")
	public String main()
	{
		String result="";
		
		result="/WEB-INF/views/MainPage.jsp";
		
		return result;
	}
	
	@RequestMapping("/walktest.action")
	public String walktest()
	{
		String result="";
		
		result="/WEB-INF/views/WalkTestPage.jsp";
		
		return result;
	}
	
}

