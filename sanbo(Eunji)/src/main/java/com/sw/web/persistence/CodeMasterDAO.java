package com.sw.web.persistence;

import java.util.List;

import com.sw.web.domain.CodeMasterVO;


public interface CodeMasterDAO {
	public void add(CodeMasterVO vo) throws Exception; // 추가
	
	public List<CodeMasterVO> readList() throws Exception;
	public CodeMasterVO read(int id) throws Exception;//id로 검색해서 가져오기
	public CodeMasterVO read(String reprec) throws Exception; 
	public void update(CodeMasterVO vo) throws Exception; // 수정하기
 
}
