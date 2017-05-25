package com.mobile.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mobile.dao.MemberDAO;
import com.mobile.entity.MemberDTO;
import com.mobile.exception.LikeatException;
@Service
public class MemeberService {
	
	@Autowired
	private MemberDAO dao;
	
	public void join(MemberDTO dto) throws LikeatException {

		try{
//			session.insert(namespace + "join", dto);
			dao.join(dto);

//			session.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new LikeatException("회원가입실패!!!!!!!!!!!!!");
		} finally {
//			session.close();
		}		
	}//join

	public void modifyMember(MemberDTO dto) throws LikeatException {
		
		try{
//			session.update(namespace + "modify", dto);
			dao.modifyMember(dto);
			
//			session.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new LikeatException("회원정보수정실패!!!!!!!!!!!!!");
		} finally {
//			session.close();
		}		
	}//modifyMember

	public MemberDTO login(HashMap<String, String> loginfo) throws LikeatException {
		
		MemberDTO dto = null;
		System.out.println("logininfo " +loginfo);
		try {
//			dto = session.selectOne(namespace + "login", loginfo);
			dto = dao.login(loginfo);	
			
//			session.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new LikeatException("로그인실패!!!!!!!!!!!!!!!!");
		} finally {
//			session.close();
		}
		return dto;
	}//login
	
}
