// 회원인지 아닌지 조회, 로그인 성공/실패 + 펫시팅과 대리산책 타임라인 종료 횟수 전송
   @RequestMapping("/memberlogin.action")
   public String loginCount(MemberDTO dto, HttpSession session, Model model)
   {
       String url = "";
       String memNickName = memberService.searchMemNickName(dto);
       String memSid = memberService.searchMemsid(dto);
       String sittingCount = memberService.searchSittingcount(dto);
       String walkCount = memberService.searchWalkcount(dto);
       String jmNickName = sittingService.sittingPopup(memSid).getJmNickName();
       String grade = sittingService.sittingPopup(memSid).getGrade();
       String spTitle = sittingService.sittingPlaceBasic(memSid).get(0).getSptitle();
       int followingCount = sittingService.sittingPopup(memSid).getFollowingCount();
       int srwCount = sittingService.sittingPopup(memSid).getSrwCount();
       int srwRateAvg = sittingService.sittingPopup(memSid).getSrwRateAvg();
       int stleCount = sittingService.sittingPopup(memSid).getStleCount();
       
       
       int dbValue;

       if (memSid.equals("0"))
       {
           url = "redirect:loginpage.action?error=1";
       }
       else
       {
           session.setAttribute("memNickName", memNickName);
           session.setAttribute("memSid", memSid);
           session.setAttribute("jmNickName", jmNickName);
           session.setAttribute("grade", grade);
           session.setAttribute("spTitle", spTitle);
           session.setAttribute("followCount", followingCount);
           session.setAttribute("reviewCount", srwCount);
           session.setAttribute("reviewRate", srwRateAvg);
           session.setAttribute("endCount", stleCount);
           

           int sittingCountInt = Integer.parseInt(sittingCount);
           int walkCountInt = Integer.parseInt(walkCount);

           if (sittingCountInt == 0 && walkCountInt == 0) 
           {
               dbValue = 0;
           } 
           else if (walkCountInt > sittingCountInt) 
           {
               dbValue = 1;
           } 
           else 
           {
               dbValue = 2;
           }

           session.setAttribute("dbValue", dbValue);
           url = "redirect:mainpage.action";
       }

       return url;
   }