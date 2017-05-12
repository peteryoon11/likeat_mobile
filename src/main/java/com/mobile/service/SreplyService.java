package com.mobile.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mobile.dao.SreplyDAO;
import com.mobile.entity.SreplyDTO;

@Service
public class SreplyService {
	
	@Autowired
	private SreplyDAO dao;

	public List<SreplyDTO> selectSID(String sid) {

		List<SreplyDTO> list = null;
		try {
//			list = session.selectList(namespace + "selectSID", sid);
			list = dao.selectSID(sid);
		} finally {
//			session.close();
		}
		return list;
	}// selectAll

	// countReview
	public int countReview(String sid) {

//		List<SreplyDTO> list = null;
		int rcount = 0;
		try {
//			rcount = session.selectOne(namespace + "countReview", sid);
			rcount = dao.countReview(sid);
		} finally {
//			session.close();
		}
		return rcount;
	}

	public List<SreplyDTO> searchNeaSto(String addr2) {

		List<SreplyDTO> list = null;
//		int rcount = 0;
		try {
//			list = session.selectList(namespace + "searchNeaSto", addr2);
			list = dao.searchNeaSto(addr2);
		} finally {
//			session.close();
		}
		return list;
	}

	public void insertReply(SreplyDTO dto) {

		List<SreplyDTO> list = null;
		int rcount = 0;
		try {
//			session.insert(namespace + "insertReply", dto);
			dao.insertReply(dto);
			
//			session.commit();
		} finally {
//			session.close();
		}
	}

}
