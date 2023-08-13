package com.act.sitting;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class SittingController
{
	@Autowired
	private SittingService sittingService;

	// 펫시팅(돌봄장소) 리스트업 페이지로 가기
	@RequestMapping("/sittinglistpage.action")
	public String sittingList(Model model)
	{
		String view = "";

		model.addAttribute("list", sittingService.list());
		model.addAttribute("IndexTagList", sittingService.IndexTagList());
		model.addAttribute("tagList", sittingService.tagList());
		
		view = "/WEB-INF/views/sitting/SittingListPage.jsp";
		return view;
	}

	// 펫시터 예약화면
	@RequestMapping("/sittingreservationpage.action")
	public String getSittingReservationView()
	{
		String result = "";

		result = "/WEB-INF/views/sitting/SittingReservationPage.jsp";

		return result;
	}
	
	// 마이페이지 펫시팅. AJAX로 처리. 들어온 예약 확인하기
	@RequestMapping("/mypagesittingform.action")
	public String myPageSitting(HttpSession session ,Model model)
	{
		String view = "";
		SittingDTO dto = new SittingDTO();
		
		String memSid = (String)session.getAttribute("memSid");
		
		dto.setMemSid(memSid);
		
		
		// AJAX
		int stsCount = sittingService.sittingStsCount(dto);
		int slCount = sittingService.sittingSlCount(dto);
		
		if(stsCount!=0)			// 시험제출번호를 가지고 있다면
		{
			if(slCount!=0)		// 펫시팅면허번호를 가지고 있다면
	        {
				// 현재 운영중인 돌봄장소번호
				int spSid = sittingService.sittingPlaceBasic(memSid).get(0).getSpSid();
				
				// 현재 운영중인 돌봄장소의 기본정보(태그, 사진, 휴무일 제외)
				model.addAttribute("info", sittingService.sittingPlaceBasic(memSid).get(0));
				
				// 현재 운영중인 돌봄장소의 특이사항
				model.addAttribute("tags", sittingService.sittingPlaceTags(spSid));
				
				// 나에게 달린 후기
				model.addAttribute("reviews", sittingService.sittingReviews(memSid));
				
				// 후기를 쓴 사람의 닉네임을 조회하기위한 전체 출력
				model.addAttribute("reviewers", sittingService.sittingReviewers());
				
				
				
				view = "/WEB-INF/ajax/MyPageSittingForm.jsp";
	        }
			else				// 시험은 보았지만, 공간등록을 하지 않은 경우
				view = "/WEB-INF/ajax/MyPageSittingPlaceRegisterForm.jsp";
		}
		else					// 시험을 보지 않은 회원인 경우
			view = "/WEB-INF/ajax/MyPageSittingRegisterForm.jsp";
	
		return view;
	}
	
	
	// 마이페이지 펫시팅의 돌봄장소 수정하기를 눌렀을 때, AJAX처리
	@RequestMapping("/updatespinfoform.action")
	public String updateSPInfoForm()
	{
		String result = "";
		// AJAX
		result = "/WEB-INF/ajax/UpdateSPInfoForm.jsp";
		return result;
	}

	
	// 마이페이지에서 펫시팅의 돌봄장소 등록하기를 눌렀을 때
	@RequestMapping("/registerspinfoform.action")
	public String registerSpInfoForm()
	{
		String result = "";
		result = "/WEB-INF/ajax/MyPageSittingForm.jsp";
		return result;
	}
	
	// 펫시팅 리스트에서 펫시터 지원하기 눌렀을때
	@RequestMapping("/sittingtest.action")
	public String main()
	{
		String result = "";
		result = "/WEB-INF/views/sitting/SittingTermsPage.jsp";
		return result;
	}
	
	// 펫시터 약관 동의하고 페이지로 감
	@RequestMapping("/sittingteststart.action")
	public String openSittingTestStart()
	{
		String result = "";
		result = "/WEB-INF/views/sitting/SittingTestPage.jsp";

		return result;
	}

	
	@RequestMapping("/sittingtestpass.action")
	public String openSittingTestPass()
	{
		String result = "";
		result = "/WEB-INF/views/index/TestResultPage.jsp";
		return result;
	}
	
	// 펫시터 후기 모달
	@RequestMapping("/sittingreview.action")
	public String sittingReview()
	{
		String result = "";

		result = "/WEB-INF/views/sitting/SittingReviewPage.jsp";

		return result;
	}
	
	
	  // 펫시팅 리스트 검색필터 버튼 (태그검색 포함)
	  
	  @RequestMapping("/sittingfilterlistform.action") 
	  public String sittingFilterListForm(SittingDTO dto, Model model) 
	  { 
		  String view = "";
		  
		  System.out.println("extraAddr(dto) : " + dto.getExtraAddr() );
		  System.out.println("isptSidList(dto) : " + dto.getIsptSidList());
		  System.out.println("spMaxPet:" + dto.getSpMaxPet());
		  
		  // 검색태그들을 담은 배열을 ,으로 쪼개서 String 타입의 배열에 담는다.
		  String[] isptSidList = dto.getIsptSidList().split(",");
		  
		  // String 타입의 배열을 Sid의 원래 데이터 타입인 Integer 타입의 배열로 바꾸기 위한 Integer 타입의 배열 선언
		  List<Integer> isptSidListInteger = new ArrayList<>();
		  
		  // 하나씩 꺼내서 Integer로 형변환하여 담는다.
		  for(String str : isptSidList)
		  {
			  int value = Integer.parseInt(str);
			  isptSidListInteger.add(value);
		  }
		  
		  
		  dto.setIsptSidListInteger(isptSidListInteger);
		  
		  System.out.println(" isptSidListInteger:" + isptSidListInteger);
		  
		  model.addAttribute("filterlist", sittingService.sittingFilterList(dto));
		  model.addAttribute("filtertaglist", sittingService.sittingFilterTagList(dto));
		  
		  view = "/WEB-INF/ajax/sitting/SittingFilterListForm.jsp"; 
		  return view ;
	  }
	 
	
	
	
	// <<미완>>
	// 펫시팅 리스트 검색필터 버튼 (태그검색 포함)
	/*
	 * @RequestMapping("/sittingfilterlistform.action") public String
	 * sittingFilterListForm(
	 * 
	 * @RequestParam("extraAddr") String extraAddr,
	 * 
	 * @RequestParam("datePicker") String datepicker,
	 * 
	 * @RequestParam("spMaxPet") int spMaxPet,
	 * 
	 * @RequestParam(value = "isptSidList[]", required = false) List<Integer>
	 * isptSidList, Model model) {
	 * 
	 * System.out.println("extraAddr: " + extraAddr);
	 * System.out.println("datepicker: " + datepicker);
	 * System.out.println("spMaxPet: " + spMaxPet);
	 * System.out.println("isptSidList: " + isptSidList); String view = "";
	 * 
	 * System.out.println("extraAddr: " + dto.getExtraAddr());
	 * System.out.println("datePicker: " + dto.getDatePicker());
	 * System.out.println("spMaxPet:" + dto.getSpMaxPet());
	 * System.out.println("isptSidList (request): " + list);
	 * System.out.println("isptSidList (dto) : " + dto.getIsptSidList());
	 * System.out.println("여기까지 옴1 이제 service간다");
	 * 
	 * //System.out.println("여기까지 옴2 이제 태그검색간다간다쑝간다");
	 * 
	 * System.out.println("진짜 되라고 이자식들아 extraAddr: " + extraAddr + "  datepicker: "
	 * + datepicker + "  spMaxPet: " + spMaxPet + " isptSidList: " + isptSidList);
	 * //model.addAttribute("filterlist", sittingService.sittingFilterList(dto));
	 * //model.addAttribute("filtertaglist",
	 * sittingService.sittingFilterTagList(dto));
	 * 
	 * 
	 * view = "/WEB-INF/ajax/sitting/SittingFilterListForm.jsp"; return view; }
	 */

}
