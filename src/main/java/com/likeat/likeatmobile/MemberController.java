package com.likeat.likeatmobile;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.mobile.entity.MemberDTO;
import com.mobile.exception.LikeatException;
import com.mobile.service.MemeberService;

@Controller
@SessionAttributes("loginfo")
public class MemberController {

	@Autowired
	private MemeberService service;

	@RequestMapping("JoinController")
	public ModelAndView join (MemberDTO dto) {
		ModelAndView mav = new ModelAndView();

/*		
		request.setCharacterEncoding("utf-8");
 		String username = request.getParameter("username");
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		String email = request.getParameter("email");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		
		MemberDTO dto = new MemberDTO(username, userid, userpw, email, phone1, phone2, phone3);
*/		
		String target = "";
		
		try {
			service.join(dto);
			target = "redirect:LikeatMainController";
			mav.addObject("SuccessAlert", "가입을 축하드립니다");
		} catch (LikeatException e) {
			e.printStackTrace();
			target = "error";
			mav.addObject("errorMsg", "가입 절차 중 문제가 발생했어요 :-( ");
			mav.addObject("linkMsg", "회원가입 재시도!");
			mav.addObject("link", "JoinFormController");
		}
		mav.setViewName(target);
		return mav;
	} // join()
	
	
	@RequestMapping("JoinFormController")
	public String joinForm () {
		return "join";
	}
	
	// @RequestMapping(value = "/main_search")
	@RequestMapping(value="/LoginCon")
	public ModelAndView login (String userid, String userpw) {
		ModelAndView mav = new ModelAndView();
		
		HashMap<String, String> loginfo = new HashMap<>();
		loginfo.put("userid", userid);
		loginfo.put("userpw", userpw);
		
		String target = "";
		
		try {
			MemberDTO dto = service.login(loginfo);
			if(dto != null) {
//				HttpSession session = request.getSession();
//				session.setAttribute("loginfo", dto);
//				request.setAttribute("SuccessAlert", dto.getUsername() + "님 어서오세요");
				mav.addObject("loginfo", dto);
				mav.addObject("SuccessAlert", dto.getUsername() + "님 어서오세요");
			//	target = "redirect:/likeat_mobile/";
			//	target = "/likeat_mobile/";
				target="redirect:/";
			} else {
//				request.setAttribute("loginFail", "아이디나 비밀번호를 다시 확인해주세요");
				mav.addObject("loginFail", "아이디나 비밀번호를 다시 확인해주세요");
				target = "redirect:LoginFormController";
			}
		} catch (LikeatException e) {
			e.printStackTrace();
			target = "error";
//			request.setAttribute("errorMsg", "로그인 중 문제가 발생했어요 :-( ");
//			request.setAttribute("linkMsg", "로그인 재시도!");
//			request.setAttribute("link", "LoginFormController");
			mav.addObject("errorMsg", "로그인 중 문제가 발생했어요 :-( ");
			mav.addObject("linkMsg", "로그인 재시도!");
			mav.addObject("link", "LoginFormController");
		}
		System.out.println("login form 에서 받은것 => "+target );
		mav.setViewName(target);
		return mav;
	} // login()
	
	
	
	@RequestMapping("LoginFormController")
	public String loginForm () {
		return "login";
	}//loginForm
	
	
	
	@RequestMapping("/LogoutCon")
	public ModelAndView logout (@ModelAttribute("loginfo") MemberDTO dto, SessionStatus status) {
		ModelAndView mav = new ModelAndView();

//		HttpSession session = request.getSession();
//		MemberDTO dto = (MemberDTO) session.getAttribute("loginfo");
		
		String target = "";
		
		if(dto != null) {
//			session.invalidate();
//			request.setAttribute("SuccessAlert", dto.getUsername() + "님 다시 만나요 :-)");
			status.setComplete();
			mav.addObject("SuccessAlert", dto.getUsername() + "님 다시 만나요 :-)");
			target = "redirect:LikeatMainController";
		} else {
//			request.setAttribute("loginFail", "로그인부터 시도해주세요 :-)");
			mav.addObject("loginFail", "로그인부터 시도해주세요 :-)");
			target = "redirect:LoginFormController";
		}
		mav.setViewName(target);
		return mav;
	}// logout()
	
	
	
	@RequestMapping("MemberInfoModifyController")
	public ModelAndView memberInfoModify (MemberDTO dto) {
		ModelAndView mav = new ModelAndView();
	
/*		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		String email = request.getParameter("email");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
*/		
		String target = "";
		
		try {
			service.modifyMember(dto);
			target = "redirect:MyPageController";
			/*request.setAttribute("SuccessAlert", "가입을 축하드립니다");*/
		} catch (LikeatException e) {
			e.printStackTrace();
			target = "error";
//			request.setAttribute("errorMsg", "회원정보 수정 중 문제가 발생했어요 :-( ");
//			request.setAttribute("linkMsg", "마이페이지로 이동!");
//			request.setAttribute("link", "MyPageController");
			mav.addObject("errorMsg", "회원정보 수정 중 문제가 발생했어요 :-( ");
			mav.addObject("linkMsg", "마이페이지로 이동!");
			mav.addObject("link", "MyPageController");
		}
		mav.setViewName(target);
		return mav;
	}// memberInfoModify()
	
	
	
	@RequestMapping("MyPageController")
	public ModelAndView myPage (@ModelAttribute("loginfo") MemberDTO dto) {
		ModelAndView mav = new ModelAndView();
		
//		HttpSession session = request.getSession();
//		MemberDTO dto = (MemberDTO) session.getAttribute("loginfo");
		System.out.println("넘어온 데이터 : " + dto);
		
		String target = "";
		if(dto != null) {
			target = "mypage";
		} else {
			target = "redirect:LoginFormController";
//			request.setAttribute("loginFail", "loginFail");
//			request.setAttribute("loginFail", "로그인 후 이용해주세요 :-)");
			mav.addObject("loginFail", "로그인 후 이용해주세요 :-)");
		}
		mav.setViewName(target);
		return mav;
	}// myPage()
	
	
}
