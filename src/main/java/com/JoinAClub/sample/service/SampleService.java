package com.JoinAClub.sample.service;

import java.util.List;
import java.util.Map;
 
public interface SampleService {

	List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception ; // �÷��˻�
	Map<String, Object> selectModifyList(Map<String, Object> map) throws Exception; //���ϴ��÷��˻�
	void insertBoard(Map<String, Object> map) throws Exception; // �÷��߰�
	void updateBoard(Map<String, Object> map) throws Exception; // �÷�������Ʈ
	void deleteBoard(Map<String, Object> map) throws Exception; // �÷�����
	
	
 
}