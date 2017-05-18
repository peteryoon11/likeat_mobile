package com.mobile.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mobile.entity.PageDTO;
import com.mobile.entity.StoreDTO;
import com.mobile.exception.LikeatException;
import com.mobile.service.StoreService;

@Controller
public class BottomNaviController {

	@Autowired
	private StoreService service;

	
	
	@RequestMapping(value = "/")
//	@RequestMapping(value = "/")
	public ModelAndView likeatMain (String curPage) {
		ModelAndView mav = new ModelAndView();
		System.out.println("test!!!!!!!!!!!!!!");
		if(curPage == null) {
			curPage = "1";
		}		
		
		HashMap<String, String> mapperParam = new HashMap<>();
		mapperParam.put("curPage", curPage);
		mapperParam.put("main", "main");
		
		String target = "";
		
		try {
			PageDTO pageDTO = service.selectPage(mapperParam);
			
			List<StoreDTO> topList = service.selectTop(mapperParam);
			List<StoreDTO> newList = service.selectNew(mapperParam);
			
//			request.setAttribute("pageDTO", pageDTO);
//			request.setAttribute("topList", topList);
//			request.setAttribute("newList", newList);
			
			mav.addObject("pageDTO", pageDTO);
			mav.addObject("topList", topList);
			mav.addObject("newList", newList);
			
			target = "main";
			
		} catch (LikeatException e) {
			e.printStackTrace();
			target = "error";
//			request.setAttribute("errorMsg", "목록 불러오기에 실패했어요 :-( ");
//			request.setAttribute("linkMsg", "메인 다시 둘러보기!");
//			request.setAttribute("link", "LikeatMainController");

			mav.addObject("errorMsg", "목록 불러오기에 실패했어요 :-( ");
			mav.addObject("linkMsg", "메인 다시 둘러보기!");
			mav.addObject("link", "LikeatMainController");
		}
		System.out.println(target+" <= 여기로 감!!");
		mav.setViewName(target);
		return mav;
	//	return new ModelAndView("main");
	}//likeatMain()
	
	@RequestMapping(value = "/main_search")
	public String main_search(Locale locale, Model model) {
		 System.out.println("main_search");
		/*Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );*/
		
		return "main_search";
	}
	@RequestMapping(value = "/main_likeat")
	public String main_likeatList(Locale locale, Model model) {
	 System.out.println("main_likeat");

		
		return "main_likeat";
	}

	@RequestMapping(value = "/main_lastest")
	public String main_lastest(Locale locale, Model model) {
		
		System.out.println("main_lastest");
		
		return "main_lastest";
	}
	
	@RequestMapping(value = "/main_mypage", method = RequestMethod.GET)
	public String main_mypage(Locale locale, Model model) {
		System.out.println("main_mypage");
		
		return "main_mypage";
	}
	
}
