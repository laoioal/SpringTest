package com.githrd.easy.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.githrd.easy.dao.MemberDao;
import com.githrd.easy.vo.MemberVO;

@RequestMapping("/member")
@Controller
public class Member {
	
	@Autowired
	MemberDao mDao;
	
	@RequestMapping("/login.sy")
	public ModelAndView loginForm(ModelAndView mv) {
		
		mv.setViewName("login");
		return mv;
	}
	
	@RequestMapping("loginProc.sy")
	@ResponseBody
	public HashMap<String, String> loginProc(MemberVO mVO, HttpSession session) {
		HashMap<String, String> map = new HashMap<String, String>();
		String result = "NO";
		int cnt = mDao.loginProc(mVO);
		
		if(cnt == 1) {
			result = "OK";
			session.setAttribute("SID", mVO.getId());
			mVO.setCnt(cnt);
		}
		
		map.put("result", result);
		
		return map;
	}
	
	@RequestMapping("main.sy")
	public ModelAndView main(ModelAndView mv, HttpSession session) {
		
		mv.setViewName("main");
		return mv;
	}

}
