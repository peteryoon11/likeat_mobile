package com.mobile.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mobile.entity.SreplyDTO;
import com.mobile.entity.Store_ana_dataDTO;
@Repository
public class Store_ana_dataDAO {
	
	String namespace = "com.acorn.Store_ana_dataMapper.";
	
	@Autowired
	private SqlSessionTemplate template;
	
/*	public List<SreplyDTO> selectSID(String sid) {
		return template.selectList(namespace + "selectSID", sid);
	}
	
	public int countReview(String sid) {
		return template.selectOne(namespace + "countReview", sid);
	}
	
	public List<SreplyDTO> searchNeaSto(String addr2) {
		return template.selectList(namespace + "searchNeaSto", addr2);
	}*/
	
	public void inctVicou(String sid) {
		try{
		template.update(namespace + "inctVicou", sid);
		}
		catch (Exception e) {
			// TODO: handle exception
			//e.printStackTrace(null);
			System.out.println("----------------------------");
		System.out.println(e.getMessage());
		System.out.println("----------------------------");
		}
	}
	
	public Store_ana_dataDTO select_ana_data(String sid) {
		// 요청시에 리뷰수, 라이크 , 조회수 를 라진 Store_ana_dataDTO를 리턴해줌 
		// 1. detail 페이지에서 페이지를 만들때 필요한 부분 
		// 해당 detail 페이지를 이동할때의 view count 증가 시키고 현재 메소드 호출해서 
		// 가지고 detail 페이지를 그려줌 
		Store_ana_dataDTO sadDTO=null;
		try{
			sadDTO=template.selectOne(namespace + "select_ana_data", sid);
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("-----------------------");
			System.out.println(e.getMessage());
			System.out.println("-----------------------");
		}
		return sadDTO;
	}
	/*public void inctVicou(String sid) {
		template.insert(namespace + "inctVicou", sid);
		
	}
	public void inctVicou(String sid) {
		template.insert(namespace + "inctVicou", sid);
		
	}*/
}
