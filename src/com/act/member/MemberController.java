package com.act.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController
{
	@Autowired
	private MemberService MemberService;

	// 로그인 성공/실패
	@RequestMapping("/memberlogin.action")
	public String loginCount(JoinMemberDTO dto, HttpSession session)
	{
		String view = "";

		String result = "";

		result = MemberService.searchMemsid(dto);

		//System.out.println(result);

		if (result.equals("0")) // 로그인 실패
		{
			session.setAttribute("fail", result);
			view = "redirect:LoginForm.jsp";
		}
		else // 로그인 성공
		{
			
			session.setAttribute("memSid", result);
			view = "/WEB-INF/views/MainPage.jsp";
		}

		return view;
	}

	
	// 아이디찾는 폼으로 가기
	@RequestMapping("/idFindFormPage.action")
	public String idFindForm()
	{ 
		String view = "/WEB-INF/views/IdFindFormPage.jsp";
		return view;
	}
	
	
	// 이름, 주빈번호로 아이디 찾기
	@RequestMapping("/idFind.action")
	public String idFind(@RequestBody JoinMemberDTO dto, HttpSession session)
	{ 
		String view = "";
		
		String result = "";
		
		result =MemberService.idFind(dto);
	
		if(result.equals("0"))
		{ 
			result = "아이디가 존재하지 않습니다."; 
		}
		else
		{ 
			result = "등록된 아이디는 [" + result + "] 입니다.";
		}
	
		session.setAttribute("result", result);
	
		view = "/WEB-INF/views/AjaxIdFind.jsp";
	
		return view;
	}
	
	/*
	 * // 비밀번호 재설정을 위해 아이디, 이름, 주민번호를 입력받는 폼
	 * 
	 * @RequestMapping("/pwFindFormPage.action") public String
	 * pwRemakeForm(HttpServletRequest request) { String view =
	 * "/WEB-INF/views/PwFindFormPage.jsp";
	 * 
	 * int result = 1; // 최초요청시에는 res로 1을 넘겨주어 alert이 뜨지 않도록 함
	 * request.setAttribute("res", result);
	 * 
	 * return view; }
	 * 
	 * // 입력받은 아이디, 이름, 주민번호에 해당하는 회원이 있는지 검사
	 * 
	 * @RequestMapping("/pwFind.action") public String pwFind(JoinMemberDTO dto,
	 * HttpServletRequest request) { String view="";
	 * 
	 * IJoinMemberDAO dao = sqlSession.getMapper(IJoinMemberDAO.class);
	 * 
	 * int result = dao.findPw(dto);
	 * 
	 * if(result==0) // 조회결과 jmSid 가 없으면 { // res 로 0을 넘겨주며 다시 PwFindFormPage.jsp 을
	 * 요청, 이 때는 alert이 뜸 request.setAttribute("res", result); view =
	 * "/WEB-INF/views/PwFindFormPage.jsp"; } else // 조회결과 jmSid 가 있으면 { // res 로
	 * jmSid 를 넘겨주며 비밀번호 재설정 폼을 요청. request.setAttribute("jmSid", result); view =
	 * "/WEB-INF/views/PwRemakeForm.jsp"; }
	 * 
	 * 
	 * return view; }
	 */
	

}
