package com.githrd.easy.service;



import org.aspectj.lang.*;
import org.aspectj.lang.annotation.*;
import org.slf4j.*;

import org.springframework.stereotype.*;

import com.githrd.easy.vo.MemberVO;




@Service
@Aspect
public class LoginLogService {
	private static Logger loginLog = LoggerFactory.getLogger("memberLog");
	
	@After("execution(* com.githrd.easy.controller.Member.loginProc(..))")
	public void loggoutRecird(JoinPoint join) {
		MemberVO mVO = (MemberVO) join.getArgs()[0];
		
		if(mVO.getCnt() == 1) {
			loginLog.info(mVO.getId() + "] 님이 로그인했습니다.");
		}
	}

	
}
