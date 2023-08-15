package com.act.sitting;

import java.util.ArrayList;

public class SittingQuestionDTO
{
	private String memSid;
	
	// 펫시터 문제은행 
	private String stbquestion, stbanswer;
	private int stbsid, stbpoint;
	
	private String jmnickname;
	
	private int totalScore;
	
	// 사용자가 제출한 값들을 배열로 보냄
	private String[] userAnswer;
	private String answers;
	
	// 문제 시험지 - 접수번호, 문제은행에서 랜덤으로 뽑아온 10개의 문제
	private int strsid, stbsid1, stbsid2, stbsid3, stbsid4, stbsid5, stbsid6, stbsid7, stbsid8, stbsid9, stbsid10;
	private ArrayList<String> answer;
	
	// 합격여부를 나타냄
	private boolean ispassed; 
	
	// 합격컷 범례
	private int spcsid, spcstandard;
	private String spcdate;
	
	// 제출번호
	private int stssid;
	
	public int getStssid()
	{
		return stssid;
	}
	public void setStssid(int stssid)
	{
		this.stssid = stssid;
	}
	public boolean isIspassed()
	{
		return ispassed;
	}
	public void setIspassed(boolean ispassed)
	{
		this.ispassed = ispassed;
	}
	public int getTotalScore()
	{
		return totalScore;
	}
	public void setTotalScore(int totalScore)
	{
		this.totalScore = totalScore;
	}
	public String getJmnickname()
	{
		return jmnickname;
	}
	public void setJmnickname(String jmnickname)
	{
		this.jmnickname = jmnickname;
	}
	public ArrayList<String> getAnswer()
	{
		return answer;
	}
	public void setAnswer(ArrayList<String> answer)
	{
		this.answer = answer;
	}
	public String getMemSid()
	{
		return memSid;
	}
	public void setMemSid(String memSid)
	{
		this.memSid = memSid;
	}
	public String getStbquestion()
	{
		return stbquestion;
	}
	public void setStbquestion(String stbquestion)
	{
		this.stbquestion = stbquestion;
	}
	public String getStbanswer()
	{
		return stbanswer;
	}
	public void setStbanswer(String stbanswer)
	{
		this.stbanswer = stbanswer;
	}
	public int getStbsid()
	{
		return stbsid;
	}
	public void setStbsid(int stbsid)
	{
		this.stbsid = stbsid;
	}
	public int getStbpoint()
	{
		return stbpoint;
	}
	public void setStbpoint(int stbpoint)
	{
		this.stbpoint = stbpoint;
	}
	public String[] getUserAnswer()
	{
		return userAnswer;
	}
	public void setUserAnswer(String[] userAnswer)
	{
		this.userAnswer = userAnswer;
	}
	public String getAnswers()
	{
		return answers;
	}
	public void setAnswers(String answers)
	{
		this.answers = answers;
	}
	public int getStrsid()
	{
		return strsid;
	}
	public void setStrsid(int strsid)
	{
		this.strsid = strsid;
	}
	public int getStbsid1()
	{
		return stbsid1;
	}
	public void setStbsid1(int stbsid1)
	{
		this.stbsid1 = stbsid1;
	}
	public int getStbsid2()
	{
		return stbsid2;
	}
	public void setStbsid2(int stbsid2)
	{
		this.stbsid2 = stbsid2;
	}
	public int getStbsid3()
	{
		return stbsid3;
	}
	public void setStbsid3(int stbsid3)
	{
		this.stbsid3 = stbsid3;
	}
	public int getStbsid4()
	{
		return stbsid4;
	}
	public void setStbsid4(int stbsid4)
	{
		this.stbsid4 = stbsid4;
	}
	public int getStbsid5()
	{
		return stbsid5;
	}
	public void setStbsid5(int stbsid5)
	{
		this.stbsid5 = stbsid5;
	}
	public int getStbsid6()
	{
		return stbsid6;
	}
	public void setStbsid6(int stbsid6)
	{
		this.stbsid6 = stbsid6;
	}
	public int getStbsid7()
	{
		return stbsid7;
	}
	public void setStbsid7(int stbsid7)
	{
		this.stbsid7 = stbsid7;
	}
	public int getStbsid8()
	{
		return stbsid8;
	}
	public void setStbsid8(int stbsid8)
	{
		this.stbsid8 = stbsid8;
	}
	public int getStbsid9()
	{
		return stbsid9;
	}
	public void setStbsid9(int stbsid9)
	{
		this.stbsid9 = stbsid9;
	}
	public int getStbsid10()
	{
		return stbsid10;
	}
	public void setStbsid10(int stbsid10)
	{
		this.stbsid10 = stbsid10;
	}
	public int getSpcsid()
	{
		return spcsid;
	}
	public void setSpcsid(int spcsid)
	{
		this.spcsid = spcsid;
	}
	public int getSpcstandard()
	{
		return spcstandard;
	}
	public void setSpcstandard(int spcstandard)
	{
		this.spcstandard = spcstandard;
	}
	public String getSpcdate()
	{
		return spcdate;
	}
	public void setSpcdate(String spcdate)
	{
		this.spcdate = spcdate;
	} 
	
}
