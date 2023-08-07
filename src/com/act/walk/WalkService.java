package com.act.walk;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

public class WalkService implements IWalkService
{	
	@Autowired private SqlSession sqlSession;
	
	
}
