package com.JoinAClub.jac_controller;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.JoinAClub.jac_dao.ContentDAO;


@Controller
public class JacController {
	
	private static final Logger logger = LoggerFactory.getLogger(JacController.class);
	
	ContentDAO dao;
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	public void setDao(ContentDAO dao) {
		this.dao = dao;
	}
	
	
	
	/* ����)
	 @RequestMapping("/list")
	public String list(Model model) {

		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("list", dao.listDao());
		
		return "/list";
		
	}*/
	
	
	
}
