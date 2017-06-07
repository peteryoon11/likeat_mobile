package com.mobile.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mobile.entity.MemberDTO;
import com.mobile.entity.SreplyDTO;
import com.mobile.entity.StoreDTO;
import com.mobile.entity.Store_ana_dataDTO;
import com.mobile.exception.LikeatException;
import com.mobile.service.MemeberService;
import com.mobile.service.SreplyService;
import com.mobile.service.StoreService;
import com.mobile.service.Store_ana_dataService;

@Controller
@SessionAttributes("mdtoInfo")
public class MainPageAJAXController {

	@Autowired
	StoreService st_service;
	
	@Autowired
	SreplyService sr_service;
	
	@Autowired
	Store_ana_dataService sad_service;
	
	
	@Autowired
	MemeberService mem_service;
	
	
	@RequestMapping(value = "/infiniteScrollList")
	public String mainPageInfinity()
	{
		System.out.println("infiniteScrollList!!!");
		return "main_main/infiniteScrollList";
	}
	
	@RequestMapping(value = "/logout")
	@ResponseBody
	public String logout(HttpSession session)
	{
		session.invalidate();	
		//return null;
		return "로그아웃 잘됨";
	}
	
	@RequestMapping(value = "/appendReply")
	@ResponseBody
	public SreplyDTO appendReply(
			SreplyDTO givenReply
			/*String userid, String sid,
			String rid, String rcontent,
			String rappr
			*/
			)
	{
		//SreplyDTO givenReply=null;
		System.out.println("-------");
		System.out.println(givenReply);
		System.out.println("-------");
		
		int insertresult=sr_service.insertReply(givenReply);
		//session.invalidate();	
		//return null;
		System.out.println("결과는!! "+insertresult);
		//String result="appendReply 결과?";
		 
		return givenReply;
	}
	@RequestMapping(value = "/login")
	@ResponseBody
	public MemberDTO loginInfosend( String userid, String passwd, HttpSession session
		,	Model model)
	{
		System.out.println("loginInfosend => userid : "+userid+" passwd : "+passwd);
		
		HashMap<String, String> loginInfo=new HashMap<>();
		loginInfo.put("userid", userid);
		loginInfo.put("userpw", passwd);
		
		MemberDTO mdtoInfo=null;
		try {
			mdtoInfo=mem_service.login(loginInfo);
		
		} catch (LikeatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(mdtoInfo==null)
		{
			System.out.println("mdto 가 널 이네");
		}
		else
		{
			System.out.println("mdto 가 널 아니네 ");
			 session.setAttribute("loginInfo", mdtoInfo);
			 model.addAttribute("mdtoInfo", mdtoInfo);
		
			 
		}
		
		return mdtoInfo;
		
	}
	
	@RequestMapping(value = "/detail")
	@ResponseBody
	public HashMap<String, Object> detailPage( String sid, Model model,HttpSession session)
	{	String tempsid = sid.substring(0, 5);
		//st_service.selectOne(sid);
		System.out.println(sid.length());
		
		StoreDTO sdto = st_service.selectOne(tempsid);
		
		List<SreplyDTO> rdtolist= sr_service.selectSID(tempsid);
		
		// detail 페이지로 갈때 조회수 증가 하는 부분 
		sad_service.inctVicou(tempsid);
		// 
		Store_ana_dataDTO sad_dto = sad_service.select_ana_data(tempsid);
		
		if(sad_dto!=null)
		{
			System.out.println("sad_dto 널 아님 ");
		}
		else
		{
			System.out.println("sad_dto 널!! ");
		}
		
		HashMap<String, Object> hlist= new HashMap<>();
		
		hlist.put("storeDTO", sdto);
		hlist.put("sReDTOList", rdtolist);
		hlist.put("sad_dto", sad_dto);
		if(session.getAttribute("loginInfo")!=null)
		{
			hlist.put("sessionLogin",session.getAttribute("loginInfo"));
		}
		else
		{
			hlist.put("sessionLogin","로그인 안된 상태");
		}
		
		
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
