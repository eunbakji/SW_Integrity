package com.sw.web.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

import com.sw.web.domain.CodeMasterVO;
import com.sw.web.domain.UserVO;
import com.sw.web.service.CodeMasterService;

@Controller
@RequestMapping(value="code")
public class CommonCodeController {
	
	@Autowired
	private CodeMasterService codeMasterService;
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String createCodeGet() throws Exception {
		return "test/common_code";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String createCodePost(@ModelAttribute("code") CodeMasterVO vo) throws Exception {
		codeMasterService.add(vo);
		return "redirect:/test/commmon_code";
	}
	
	
	
	@RequestMapping(value="/read", method=RequestMethod.GET)
	public String readCodeGet(Model model) throws Exception {
		List<CodeMasterVO> vo = codeMasterService.readList();
		model.addAttribute("code",vo);
		return "test/common_code";
	}
	

}
