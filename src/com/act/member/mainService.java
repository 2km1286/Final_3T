package com.act.member;

public class mainService
{
	 public static void main(String[] args) 
	    {
	        SmsService smsService = new SmsService();
	        smsService.sendSMS(); // sendSMS 메서드 호출하여 SMS 발송
	    }
}
