package com.mobile.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mobile.entity.StoreDTO;
import com.mobile.exception.LikeatException;
import com.mobile.service.StoreService;

@Controller
public class MainPageAJAXController {

	@Autowired
	StoreService st_service;
	
	@RequestMapping(value = "/infiniteScrollList")
	public String mainPageInfinity()
	{
		System.out.println("infiniteScrollList!!!");
		return "main_main/infiniteScrollList";
	}
	
	@RequestMapping(value = "/detail")
	@ResponseBody
	public StoreDTO detailPage( String sid)
	{	String tempsid = sid.substring(0, 5);
		//st_service.selectOne(sid);
		System.out.println(sid.length());
		StoreDTO sdto = st_service.selectOne(tempsid);
		String result ="";
		if(sdto==null)
		{
			result="sdto is null";
		}
		else
		{
			result="sdto is not null";
		}
	
		System.out.println("detailPage!!! "+result);
		
	//	return "main_main/infiniteScrollList "+sid+" "+result+" "+sid.length()+" tempsid "+tempsid;
	//return sdto.toString();
		return sdto;
	}
}
