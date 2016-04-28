package com.JoinAClub.sample.service;

import java.util.List;
import java.util.Map;
 
public interface SampleService {

	List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception ; // 컬럼검색
	Map<String, Object> selectModifyList(Map<String, Object> map) throws Exception; //원하는컬럼검색
	void insertBoard(Map<String, Object> map) throws Exception; // 컬럼추가
	void updateBoard(Map<String, Object> map) throws Exception; // 컬럼업데이트
	void deleteBoard(Map<String, Object> map) throws Exception; // 컬럼삭제
	
	
 
}