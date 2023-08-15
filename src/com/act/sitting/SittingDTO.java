package com.act.sitting;

import java.util.List;

/*
JM_NICKNAME, SP_TITLE, SP_ADDR1, SP_ADDR2, MEM_SID, SPH_SID, SHP_START, SHP_END, 
SR_START, SR_END, SRW_SID, SRW_SID, STLE_SID, SP_MAX_PET, SP_SID
*/

public class SittingDTO {

   // SITTING_PLACE_LIST_VIEW
   private String jmNickName, sptitle, spAddr1, spAddr2, extraAddr, memSid, sphStart, sphEnd, srStart, srEnd;
   private int sphSid, srwSid, stleSid, spMaxPet, spSid;
   private String grade;
   private int price;

   private String spContent;
   private int ipSid;

   // SITTING_REVIEW_VIEW

   private String srwTitle, srwContent, srwDate, pJmNickName;   //pjmNickName 는 후기를 쓴 사람의 닉네임을 담을 변수
   private int srwRate, srwRateAvg;


   // INDEX_SITTING_PLACE_TAG
   private int isptSid;
   private String isptName;

   // 예약시작일, 종료일, 접수완료번호, 예약을 요청한 견주의 memSid는 pmemSid
   private String sbStart, sbEnd, pMemSid;
   private int sbSid;


   // 펫시팅 리스트 검색조건 - 날짜
   private String datePicker;
   
   // 펫시팅 후기의 사진들
   private String srpLink, srpDate;
   
   // 태그검색 ajax 데이터전송 전 String 으로 묶어주는 변수
   private String isptSidList;

   // 태그검색 선택된 태그들의 sid번호 담는 리스트
   private List<Integer> isptSidListInteger;

   // 펫시터 팔로잉 리스트에서 팔로워 수 담을 변수
   private int followingCount;

   // 펫시터 당(memSid) 달린 후기 수 조회
   private int srwCount;

   // 펫시터 당 타임라인 완료 수 조회
   private int stleCount;


   // 돌봄장소 이미지. spsid로 조회
   private String sppLink;
   

   // 반려견 정보
   private String petName, petImage, petBirth, petGen, petSize, petSpecialNote;  
   private int petSid, iptSid, petWeight;
   
   
   public String getJmNickName()
   {
      return jmNickName;
   }
   public void setJmNickName(String jmNickName)
   {
      this.jmNickName = jmNickName;
   }
   public String getSptitle()
   {
      return sptitle;
   }
   public void setSptitle(String sptitle)
   {
      this.sptitle = sptitle;
   }
   public String getSpAddr1()
   {
      return spAddr1;
   }
   public void setSpAddr1(String spAddr1)
   {
      this.spAddr1 = spAddr1;
   }
   public String getSpAddr2()
   {
      return spAddr2;
   }
   public void setSpAddr2(String spAddr2)
   {
      this.spAddr2 = spAddr2;
   }
   public String getExtraAddr()
   {
      return extraAddr;
   }
   public void setExtraAddr(String extraAddr)
   {
      this.extraAddr = extraAddr;
   }
   public String getMemSid()
   {
      return memSid;
   }
   public void setMemSid(String memSid)
   {
      this.memSid = memSid;
   }
   public String getSphStart()
   {
      return sphStart;
   }
   public void setSphStart(String sphStart)
   {
      this.sphStart = sphStart;
   }
   public String getSphEnd()
   {
      return sphEnd;
   }
   public void setSphEnd(String sphEnd)
   {
      this.sphEnd = sphEnd;
   }
   public String getSrStart()
   {
      return srStart;
   }
   public void setSrStart(String srStart)
   {
      this.srStart = srStart;
   }
   public String getSrEnd()
   {
      return srEnd;
   }
   public void setSrEnd(String srEnd)
   {
      this.srEnd = srEnd;
   }
   public int getSphSid()
   {
      return sphSid;
   }
   public void setSphSid(int sphSid)
   {
      this.sphSid = sphSid;
   }
   public int getSrwSid()
   {
      return srwSid;
   }
   public void setSrwSid(int srwSid)
   {
      this.srwSid = srwSid;
   }
   public int getStleSid()
   {
      return stleSid;
   }
   public void setStleSid(int stleSid)
   {
      this.stleSid = stleSid;
   }
   public int getSpMaxPet()
   {
      return spMaxPet;
   }
   public void setSpMaxPet(int spMaxPet)
   {
      this.spMaxPet = spMaxPet;
   }
   public int getSpSid()
   {
      return spSid;
   }
   public void setSpSid(int spSid)
   {
      this.spSid = spSid;
   }
   public String getGrade()
   {
      return grade;
   }
   public void setGrade(String grade)
   {
      this.grade = grade;
   }
   public int getPrice()
   {
      return price;
   }
   public void setPrice(int price)
   {
      this.price = price;
   }
   public String getSpContent()
   {
      return spContent;
   }
   public void setSpContent(String spContent)
   {
      this.spContent = spContent;
   }
   public int getIpSid()
   {
      return ipSid;
   }
   public void setIpSid(int ipSid)
   {
      this.ipSid = ipSid;
   }
   public String getSrwTitle()
   {
      return srwTitle;
   }
   public void setSrwTitle(String srwTitle)
   {
      this.srwTitle = srwTitle;
   }
   public String getSrwContent()
   {
      return srwContent;
   }
   public void setSrwContent(String srwContent)
   {
      this.srwContent = srwContent;
   }
   public String getSrwDate()
   {
      return srwDate;
   }
   public void setSrwDate(String srwDate)
   {
      this.srwDate = srwDate;
   }
   public String getpJmNickName()
   {
      return pJmNickName;
   }
   public void setpJmNickName(String pJmNickName)
   {
      this.pJmNickName = pJmNickName;
   }
   public int getSrwRate()
   {
      return srwRate;
   }
   public void setSrwRate(int srwRate)
   {
      this.srwRate = srwRate;
   }
   public int getSrwRateAvg()
   {
      return srwRateAvg;
   }
   public void setSrwRateAvg(int srwRateAvg)
   {
      this.srwRateAvg = srwRateAvg;
   }
   public int getIsptSid()
   {
      return isptSid;
   }
   public void setIsptSid(int isptSid)
   {
      this.isptSid = isptSid;
   }
   public String getIsptName()
   {
      return isptName;
   }
   public void setIsptName(String isptName)
   {
      this.isptName = isptName;
   }
   public String getSbStart()
   {
      return sbStart;
   }
   public void setSbStart(String sbStart)
   {
      this.sbStart = sbStart;
   }
   public String getSbEnd()
   {
      return sbEnd;
   }
   public void setSbEnd(String sbEnd)
   {
      this.sbEnd = sbEnd;
   }
   public String getpMemSid()
   {
      return pMemSid;
   }
   public void setpMemSid(String pMemSid)
   {
      this.pMemSid = pMemSid;
   }
   public int getSbSid()
   {
      return sbSid;
   }
   public void setSbSid(int sbSid)
   {
      this.sbSid = sbSid;
   }
   public String getDatePicker()
   {
      return datePicker;
   }
   public void setDatePicker(String datePicker)
   {
      this.datePicker = datePicker;
   }
   public String getSrpLink()
   {
      return srpLink;
   }
   public void setSrpLink(String srpLink)
   {
      this.srpLink = srpLink;
   }
   public String getSrpDate()
   {
      return srpDate;
   }
   public void setSrpDate(String srpDate)
   {
      this.srpDate = srpDate;
   }
   public String getIsptSidList()
   {
      return isptSidList;
   }
   public void setIsptSidList(String isptSidList)
   {
      this.isptSidList = isptSidList;
   }
   public List<Integer> getIsptSidListInteger()
   {
      return isptSidListInteger;
   }
   public void setIsptSidListInteger(List<Integer> isptSidListInteger)
   {
      this.isptSidListInteger = isptSidListInteger;
   }
   public int getFollowingCount()
   {
      return followingCount;
   }
   public void setFollowingCount(int followingCount)
   {
      this.followingCount = followingCount;
   }
   public int getSrwCount()
   {
      return srwCount;
   }
   public void setSrwCount(int srwCount)
   {
      this.srwCount = srwCount;
   }
   public int getStleCount()
   {
      return stleCount;
   }
   public void setStleCount(int stleCount)
   {
      this.stleCount = stleCount;
   }
   public String getSppLink()
   {
      return sppLink;
   }
   public void setSppLink(String sppLink)
   {
      this.sppLink = sppLink;
   }
   public String getPetName()
   {
      return petName;
   }
   public void setPetName(String petName)
   {
      this.petName = petName;
   }
   public String getPetImage()
   {
      return petImage;
   }
   public void setPetImage(String petImage)
   {
      this.petImage = petImage;
   }
   public String getPetBirth()
   {
      return petBirth;
   }
   public void setPetBirth(String petBirth)
   {
      this.petBirth = petBirth;
   }
   public String getPetGen()
   {
      return petGen;
   }
   public void setPetGen(String petGen)
   {
      this.petGen = petGen;
   }
   public String getPetSize()
   {
      return petSize;
   }
   public void setPetSize(String petSize)
   {
      this.petSize = petSize;
   }
   public String getPetSpecialNote()
   {
      return petSpecialNote;
   }
   public void setPetSpecialNote(String petSpecialNote)
   {
      this.petSpecialNote = petSpecialNote;
   }
   public int getPetSid()
   {
      return petSid;
   }
   public void setPetSid(int petSid)
   {
      this.petSid = petSid;
   }
   public int getIptSid()
   {
      return iptSid;
   }
   public void setIptSid(int iptSid)
   {
      this.iptSid = iptSid;
   }
   public int getPetWeight()
   {
      return petWeight;
   }
   public void setPetWeight(int petWeight)
   {
      this.petWeight = petWeight;
   }
}
