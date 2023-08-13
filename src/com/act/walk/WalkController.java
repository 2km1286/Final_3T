package com.act.walk;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.act.walk.WalkDTO;

@Controller
public class WalkController {

	@Autowired
	private IWalkService walkService;

	// 대리산책 공고글 리스트업 페이지로 가기
	@RequestMapping("/walklistpage.action")
	public String walkList(Model model, WalkDTO s) 
	{

		String view = "";

		model.addAttribute("list", walkService.list());
		model.addAttribute("IndexTagList", walkService.IndexTagList());
		model.addAttribute("gradeList", walkService.gradeList());

		view = "/WEB-INF/views/walk/WalkListPage.jsp";
		return view;
	}
	
	// 대리산책 공고글 작성하기 페이지로 가기
	@RequestMapping("/walkpostpage.action")
	public String getWalkPost(Model model, HttpSession session)
	{
		String result = "";
		
		String sid = (String)session.getAttribute("memSid");
		WalkDTO dto = walkService.getWalkerLicenseNumber(sid);
		
		if (dto.getWlsid() > 0)	   // 자격번호가 0이 아니라면 자격번호가 있음
		{
			model.addAttribute("dto", walkService.getWalkerLicenseNumber(sid));
			result = "/WEB-INF/views/walk/WalkPostPage1.jsp";

		} else if(dto.getWlsid() == 0 && !sid.equals("0"))	// 자격번호가 0이라면 자격번호가 없음
		{			
			session.setAttribute("errorMesg", "대리산책러로 활동하시려면 자격 검증 테스트를 완료해주시기 바랍니다.");
			result = "redirect:/walklistpage.action";
		} else if(sid.equals("0"))		// sid가 0이라면 로그인을 하지 않은 유저 
		{
			session.setAttribute("errorMesg", "로그인 후 이용 가능한 서비스입니다.");
			return "redirect:/walklistpage.action";
			
		}
		
		model.addAttribute("IndexTagList", walkService.IndexTagList());
		return result;
	}
	
	// 대리산책 공고글 등록
	@RequestMapping(value="/walkpostinsert.action", method = RequestMethod.POST)
	public String insertPost(HttpServletRequest request, HttpSession session, HttpServletResponse response) throws IOException, ServletException
	{
		WalkDTO dto = new WalkDTO();
		String fileName = "";
		String filePath = "";
		
		response.setContentType("text/html; charset=UTF-8");
		//PrintWriter out = response.getWriter();
		
		File attachesDir = new File("C:\\attaches");
		
		DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
	    fileItemFactory.setRepository(attachesDir);
	    fileItemFactory.setSizeThreshold(1024 * 1024);
	    ServletFileUpload fileUpload = new ServletFileUpload(fileItemFactory);
	    
	    try {
            List<FileItem> items = fileUpload.parseRequest(request);
            for (FileItem item : items) {
                if (item.isFormField()) {
                    //System.out.printf("파라미터 명 : %s, 파라미터 값 :  %s \n", item.getFieldName(), item.getString("UTF-8"));
                    
                    if(item.getFieldName().equals("wptitle"))
                    	dto.setWptitle(item.getString("UTF-8"));
                    else if(item.getFieldName().equals("wpcontent")) 
                    	dto.setWpcontent(item.getString("UTF-8"));
                    else if(item.getFieldName().equals("wpmaxpet"))
                    	dto.setWpmaxpet(Integer.parseInt(item.getString("UTF-8")));
                    else if(item.getFieldName().equals("wpaddr1"))
                    	dto.setWpaddr1(item.getString("UTF-8"));
                    else if(item.getFieldName().equals("wpextraaddr"))
                    	dto.setWpextraaddr(item.getString("UTF-8"));
                    else if(item.getFieldName().equals("wpstart"))
                    	dto.setWpstart(item.getString("UTF-8"));
                    else if(item.getFieldName().equals("wpend"))
                    	dto.setWpend(item.getString("UTF-8"));
                    else if(item.getFieldName().equals("selectedTags"))
                    {
                    	String selectedTagsString = item.getString("UTF-8");
                    	List<String> selectedTags = Arrays.asList(selectedTagsString.split(","));	
                    	dto.setSelectedTags(selectedTags);
                    }
                    
                } else {
                    // System.out.printf("파라미터 명 : %s, 파일 명 : %s,  파일 크기 : %s bytes \n", item.getFieldName(), item.getName(), item.getSize());
                    if (item.getSize() > 0) {
                        String separator = File.separator;
                        int index =  item.getName().lastIndexOf(separator);
                        fileName = item.getName().substring(index  + 1);
                        filePath = "C:\\attaches" + separator + fileName;
                        File uploadFile = new File(filePath);
                        item.write(uploadFile);
                        
                        if(item.getFieldName().equals("file"))
                        	dto.setWppname(item.getName()); // 파일 이름 설정
                       
                    }
                }
            }
 
        } catch (Exception e) {
            e.printStackTrace();
        }
	    
	    String memSid = (String)session.getAttribute("memSid");
	    dto.setMemSid(memSid);
	    dto.setWpppath("C:\\attaches");
	    
	    boolean success = walkService.postInsert(dto);
	    
	    if (success) 
	      return "redirect:/walklistpage.action";
	    else 
	      return "redirect:/walkreservationpage.action";
	    
	}
	
	// 대리산책러가 되기 위해 약관을 누르고 약관동의를 누르면 시험지가 뜬다. 
	@RequestMapping("/walktestpage.action")
	public String getWalkTest()
	{
		String result = "";
		return result;
	}
	
	

	// 대리산책러 예약화면
	@RequestMapping("/walkreservationpage.action")
	public String getReservationView() {
		String result = "";

		result = "/WEB-INF/views/walk/WalkReservationPage.jsp";

		return result;
	}

	// 대리산책러 결제화면
	@RequestMapping("/reservationpaymentpage.action")
	public String getReservationPaymentView() {
		String result = "";

		result = "/WEB-INF/views/index/ReservationPaymentPage.jsp";

		return result;
	}

	// 마이페이지 대리산책. AJAX로 처리.
	@RequestMapping("/mypagewalkform.action")
	public String myPageWalk() {
		String result = "";
		// AJAX이자 컴포넌트
		result = "/WEB-INF/ajax/MyPageWalkForm.jsp";
		return result;
	}
	
	// 대리산책러 자격 시험 시작
	@RequestMapping("/walktermspage.action")
	public String walkTest(HttpSession session, Model model) {
		String result = "";
		
		result = "/WEB-INF/views/index/TermsPage.jsp";
	
		return result;
	}
	
	// 대리산책러 약관동의 후 테스트 시험
	@RequestMapping("/walkteststart.action") 
	public String walkTestStart() {
		String result = "";
		
		
		/*
		 * if(true) 
		 * { // 펫시터라면 result = ""; 
		 * 
		 * } else // 대리산책러라면 result = "";
		 */
		
		
		return result;
	}
	
	
	
}
