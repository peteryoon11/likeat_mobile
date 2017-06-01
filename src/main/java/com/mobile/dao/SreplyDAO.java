package com.mobile.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mobile.entity.SreplyDTO;
@Repository
public class SreplyDAO {
	
	String namespace = "com.acorn.SreplyMapper.";
	
	@Autowired
	private SqlSessionTemplate template;
	
	public List<SreplyDTO> selectSID(String sid) {
		return template.selectList(namespace + "selectSID", sid);
	}
	
	public int countReview(String sid) {
		return template.selectOne(namespace + "countReview", sid);
	}
	
	public List<SreplyDTO> searchNeaSto(String addr2) {
		return template.selectList(namespace + "searchNeaSto", addr2);
	}
	
	public int insertReply(SreplyDTO dto) {
		int result =template.insert(namespace + "insertReply", dto);
		return result;
	}
}
