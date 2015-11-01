package com.model2.mvc.service.user.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.User;



@Repository("userDao")
public class UserDao{
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	///Constructor
	public UserDao() {
		System.out.println(this.getClass());
	}

	///Method
	public void addUser(User user) throws Exception {
		
		sqlSession.insert("UserMapper.addUser", user);
	}
	
	public void getUser() throws Exception{
		System.out.println("DAO");
	}
}