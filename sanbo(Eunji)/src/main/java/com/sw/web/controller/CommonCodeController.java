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
import com.sw.web.domain.CodeDetailVO;
import com.sw.web.service.CodeMasterService;
import com.sw.web.service.CodeDetailService;

@Controller
@RequestMapping(value="code")
public class CommonCodeController {
	
	@Autowired
	private CodeMasterService codeMasterService;
	private CodeDetailService codeDetailService;
	
	/*
	 * 대표코드 보여주기
	 */
	
	@RequestMapping(value="/read", method=RequestMethod.GET)
	public String readCodeMasterGet(Model model) throws Exception {
		List<CodeMasterVO> vo = codeMasterService.readList();
		model.addAttribute("code",vo);
		return "test/common_code";
	}
	
	/*
	 * 대표코드 삽입하기
	 */
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String createCodeMasterGet() throws Exception {
		return "test/common_code";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String createCodeMasterPost(@ModelAttribute("code") CodeMasterVO vo) throws Exception {
		codeMasterService.add(vo);
		return "redirect:/code/read";
	}
	
	
	/*
	 * 상세코드 보여주기
	 */
	
	@RequestMapping(value="detail/read", method=RequestMethod.GET)
	public String readCodeDetailGet(Model model) throws Exception {
		List<CodeDetailVO> vo = codeDetailService.readList();
		model.addAttribute("code",vo);
		return "test/common_code_detail";
	}
	
	/*
	 * 상세코드 삽입하기
	 */
	
	@RequestMapping(value="detail/add",method=RequestMethod.GET)
	public String createCodeDetailGet() throws Exception {
		return "test/common_code_detail";
	}
	
	@RequestMapping(value="detail/add",method=RequestMethod.POST)
	public String createCodeDetailPost(@ModelAttribute("code") CodeDetailVO vo) throws Exception {
		codeDetailService.add(vo);
		return "redirect:/code/read";
	}
	
	
	
	
	
	
	
	

}
