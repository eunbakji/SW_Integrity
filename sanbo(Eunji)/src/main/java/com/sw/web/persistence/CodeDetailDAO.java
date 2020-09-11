package com.sw.web.persistence;

import java.util.List;

import com.sw.web.domain.CodeDetailVO;

public interface CodeDetailDAO {
	public void add(CodeDetailVO vo) throws Exception; // �߰�	
	public List<CodeDetailVO> readList() throws Exception;
	public CodeDetailVO read(int id) throws Exception; //id�� �˻��ؼ� ��������
	public void update(CodeDetailVO vo) throws Exception; // �����ϱ�

}
