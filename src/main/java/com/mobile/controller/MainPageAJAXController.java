package com.mobile.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mobile.entity.SreplyDTO;
import com.mobile.entity.StoreDTO;
import com.mobile.exception.LikeatException;
import com.mobile.service.SreplyService;
import com.mobile.service.StoreService;

@Controller
public class MainPageAJAXController {

	@Autowired
	StoreService st_service;
	
	@Autowired
	SreplyService sr_service;
	
	@RequestMapping(value = "/infiniteScrollList")
	public String mainPageInfinity()
	{
		System.out.println("infiniteScrollList!!!");
		return "main_main/infiniteScrollList";
	}
	
	@RequestMapping(value = "/detail")
	@ResponseBody
	public HashMap<String, Object> detailPage( String sid)
	{	String tempsid = sid.substring(0, 5);
		//st_service.selectOne(sid);
		System.out.println(sid.length());
		StoreDTO sdto = st_service.selectOne(tempsid);
		List<SreplyDTO> rdtolist= sr_service.selectSID(tempsid);
		
		// 
		
		HashMap<String, Object> hlist= new HashMap<>();
		
		hlist.put("storeDTO", sdto);
		hlist.put("sReDTOList", rdtolist);
		
		String store_result ="";
		if(sdto==null)
		{
			store_result="sdto is null";
		}
		else
		{
			store_result="sdto is not null";
		}
	
		System.out.println("detailPage!!! "+store_result);
		
		
	//	return "main_main/infiniteScrollList "+sid+" "+result+" "+sid.length()+" tempsid "+tempsid;
	//return sdto.toString();
		return hlist;
	}
/*	
 *  // 원본 
  @RequestMapping(value = "/detail")
	@ResponseBody
	public StoreDTO detailPage( String sid)
	{	String tempsid = sid.substring(0, 5);
		//st_service.selectOne(sid);
		System.out.println(sid.length());
		StoreDTO sdto = st_service.selectOne(tempsid);
		List<SreplyDTO> rdtolist= sr_service.selectSID(tempsid);
		HashMap<String, Object> hlist= new HashMap<>();
		
		hlist.put("storeDTO", sdto);
		hlist.put("sReDTOList", rdtolist);
		
		String store_result ="";
		if(sdto==null)
		{
			store_result="sdto is null";
		}
		else
		{
			store_result="sdto is not null";
		}
	
		System.out.println("detailPage!!! "+store_result);
		
		
	//	return "main_main/infiniteScrollList "+sid+" "+result+" "+sid.length()+" tempsid "+tempsid;
	//return sdto.toString();
		return sdto;
	}*/
	
}
