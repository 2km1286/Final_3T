package com.act.walk;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WalkService implements IWalkService
{	
	@Autowired private SqlSession sqlSession;
	
	
}
