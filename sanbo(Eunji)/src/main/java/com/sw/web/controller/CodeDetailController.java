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
@RequestMapping(value="detail")
public class CodeDetailController {
	
	@Autowired
	private CodeDetailService codeDetailService;
	
	/*
	 * 상세코드 보여주기
	 */
	
	@RequestMapping(value="/read", method=RequestMethod.GET)
	public String readCodeDetailGet(Model model) throws Exception {
		List<CodeDetailVO> vo = codeDetailService.readList();
		model.addAttribute("code",vo);
		return "test/common_code_detail";
	}
	
	/*
	 * 상세코드 삽입하기
	 */
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String createCodeDetailGet() throws Exception {
		return "test/common_code_detail";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String createCodeDetailPost(@ModelAttribute("code") CodeDetailVO vo) throws Exception {
		codeDetailService.add(vo);
		return "redirect:/detail/read";
	}

}
