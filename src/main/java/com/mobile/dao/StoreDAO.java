package com.mobile.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mobile.entity.StoreDTO;
@Repository
public class StoreDAO {
	
	String namespace = "com.acorn.StoreMapper.";
	
	@Autowired
	private SqlSessionTemplate template;
	
	public List<StoreDTO> selectPage(HashMap<String, String> mapperParam, int skip, int perPage) {
		return template.selectList(namespace + "selectPage", mapperParam, new RowBounds(skip, perPage));
	}
	
	public List<StoreDTO> selectTop(HashMap<String, String> mapperParam) {
		return template.selectList(namespace + "selectTop", mapperParam);
	}
	
	public List<StoreDTO> selectNew(HashMap<String, String> mapperParam) {
		return template.selectList(namespace + "selectNew", mapperParam);
	}
	
	public StoreDTO selectOne(String sid) {
		return template.selectOne(namespace + "selectOne",sid);
	}
	
	public List<StoreDTO> searchKeyword(String searchKeyword) {
		return template.selectList(namespace + "searchKeyword", searchKeyword);
	}
	
	public List<StoreDTO> searchCategory(String searchKeyword) {
		return template.selectList(namespace + "searchCategory", searchKeyword);
	}
	
	public int totRecord(HashMap<String, String> mapperParam) {
		return template.selectOne(namespace + "totRecord", mapperParam);
	}
	
	public int searchCnt(String searchKeyword) {
		return template.selectOne(namespace + "searchCnt", searchKeyword);
	}
	
	public List<StoreDTO> searchNeaSto(String addr2) {
		return template.selectList(namespace + "searchNeaSto",addr2);
	}
}
