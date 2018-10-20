package com.kewail.sdk.sms;

import com.kewail.sdk.sms.yun.SmsSingleSender;
import com.kewail.sdk.sms.yun.SmsSingleSenderResult;
import com.kewail.sdk.sms.yun.SmsVoiceVerifyCodeSender;
import com.kewail.sdk.sms.yun.SmsVoiceVerifyCodeSenderResult;

public class SmsSDKDemo {
    public static void main(String[] args) {
    	try {
    		//璇锋牴鎹疄闄� accesskey 鍜� secretkey 杩涜寮�鍙戯紝浠ヤ笅鍙綔涓烘紨绀� sdk 浣跨敤
    		String accesskey = "5afe5e4a0cf2cc2100449b03";
    		String secretkey ="411443b2662b420c998c74850a655d22";
    		//鎵嬫満鍙风爜
    		String phoneNumber = "17862802506";
    		 //鍒濆鍖栧崟鍙�
	    	SmsSingleSender singleSender = new SmsSingleSender(accesskey, secretkey);
	    	SmsSingleSenderResult singleSenderResult;
	
	    	 //鏅�氬崟鍙�,娉ㄦ剰鍓嶉潰蹇呴』涓恒�愩�戠鍙峰寘鍚紝缃簬澶存垨鑰呭熬閮ㄣ��
	    singleSenderResult = singleSender.send(0, "86", phoneNumber, "銆怟ewail绉戞妧銆戝皧鏁殑鐢ㄦ埛锛氭偍鐨勯獙璇佺爜锛�123456锛屽伐浣滀汉鍛樹笉浼氱储鍙栵紝璇峰嬁娉勬紡銆�", "", "");
	    	System.out.println(singleSenderResult);
	    	
	    	
	    	//璇煶楠岃瘉鐮佸彂閫�
    		//SmsVoiceVerifyCodeSender smsVoiceVerifyCodeSender = new SmsVoiceVerifyCodeSender(accesskey,secretkey);
    		//SmsVoiceVerifyCodeSenderResult smsVoiceVerifyCodeSenderResult = smsVoiceVerifyCodeSender.send("86",phoneNumber, "444144",2,"");
    		//System.out.println(smsVoiceVerifyCodeSenderResult);

    	} catch (Exception e) {
			e.printStackTrace();
		}
    }
}
