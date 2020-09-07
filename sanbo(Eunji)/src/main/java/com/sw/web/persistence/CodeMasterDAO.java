package com.sw.web.persistence;

import java.util.List;

import com.sw.web.domain.CodeMasterVO;
import com.sw.web.domain.VulCheckVO;

public interface CodeMasterDAO {
	public void add(CodeMasterVO vo) throws Exception; // �߰�
	
	public List<CodeMasterVO> readList() throws Exception;
	public CodeMasterVO read(int id) throws Exception; //id�� �˻��ؼ� ��������
	public void update(CodeMasterVO vo) throws Exception; // �����ϱ�
 
}
