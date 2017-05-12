package com.mobile.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mobile.entity.MemberDTO;

@Repository
public class MemberDAO {

	String namespace = "com.acorn.MemberMapper.";
	
	@Autowired
	private SqlSessionTemplate template;
	
	public void join(MemberDTO dto) {
		template.insert(namespace + "join", dto);
	}
	
	public void modifyMember(MemberDTO dto) {
		template.update(namespace + "modify", dto);
	}
	
	public MemberDTO login(HashMap<String, String> loginfo) {
		return template.selectOne(namespace + "login", loginfo);
	}
	
	public MemberDTO user;

}
