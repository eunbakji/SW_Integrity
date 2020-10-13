package com.sw.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sw.web.domain.UserVO;
import com.sw.web.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
			
			
			@RequestMapping(value = "/login", method = RequestMethod.GET) //8080/web/login
			   public String logintest(Model model) throws Exception {
			      return "/test/login";      //아 test 가 폴더였군!
			   }
			
			// 회원가입 get
			@RequestMapping(value = "/join", method = RequestMethod.GET) //8080/web/login
			   public String joinGet(Model model) throws Exception {
			      return "/test/join";      //아 test 가 폴더였군!
			   }
			
			//회원가입 Post
			@RequestMapping(value = {"/join"}, method = RequestMethod.POST)
			public String signupMemberPost( @ModelAttribute("user") UserVO vo) throws Exception {
				userService.addUser(vo);
				logger.info(vo.toString());
				logger.info(" /register URL GET method called. then forward join.jsp.");
				return "test/login";
			}
			

			
			// 아이디 중복체크
			@RequestMapping(value = {"/idChk.do"},method = RequestMethod.POST, produces = "application/text; charset=utf8")
			@ResponseBody
			public String idCheck(HttpServletRequest request) throws Exception {
				
				String user_id = request.getParameter("user_id");
				int result=userService.idChk(user_id);
				return Integer.toString(result);
			}
			
		
			
			//로그인 POST
			@RequestMapping(value = {"/login"}, method = RequestMethod.POST)
			public ModelAndView loginMemberPost( @ModelAttribute("user") UserVO vo,HttpSession session) throws Exception {
				boolean result = userService.login(vo, session);
				ModelAndView mav = new ModelAndView();
				if(result == true) {
					mav.setViewName("home");
					mav.addObject("msg","success");
				}else {
					mav.setViewName("redirect:/login");
					mav.addObject("msg","failure");
				}
				return mav;
			}
		
			   
			//로그아웃을 구현했다.
			@RequestMapping(value = "/logout", method = RequestMethod.GET) //8080/web/login
			   public String logout(HttpSession session) throws Exception {
				
				session.invalidate();
				return "redirect:/";
			    
			}
			
			
}
