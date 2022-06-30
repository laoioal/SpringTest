package com.githrd.easy.dao;

import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;

import com.githrd.easy.vo.MemberVO;


public class MemberDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int loginProc(MemberVO mVO) {
		return sqlSession.selectOne("mSQL.loginProc", mVO);
	}
	
}
