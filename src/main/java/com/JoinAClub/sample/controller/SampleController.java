package com.JoinAClub.sample.controller;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.JoinAClub.comm.common.CommandMap;
import com.JoinAClub.sample.service.SampleService;
 
@Controller
public class SampleController {
    Logger log = Logger.getLogger(this.getClass());
     
    @Resource(name="sampleService")
    private SampleService sampleService;
     
    //�Խ������ �׽�Ʈ
    @RequestMapping(value="/sample/openSampleBoardList.do")
    public ModelAndView openSampleBoardList(Map<String,Object> commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("/boardList");
         
        List<Map<String,Object>> list = sampleService.selectBoardList(commandMap);
        mv.addObject("list", list);
         
        return mv;
    }
    
    
    //�׽�Ʈ
    @RequestMapping(value="/sample/testMapArgumentResolver.do")
    public ModelAndView testMapArgumentResolver(CommandMap commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("");
         
        if(commandMap.isEmpty() == false){
            Iterator<Entry<String,Object>> iterator = commandMap.getMap().entrySet().iterator();
            Entry<String,Object> entry = null;
            while(iterator.hasNext()){
                entry = iterator.next();
                log.debug("key : "+entry.getKey()+", value : "+entry.getValue());
            }
        }
        return mv;
    }
    
    //admin_member ���
    @RequestMapping(value="/Admin_Member.do")
    public ModelAndView admin_Member(Map<String,Object> commandMap) throws Exception{
    	 ModelAndView mv = new ModelAndView("/Admin_Member");
         
         List<Map<String,Object>> list = sampleService.selectBoardList(commandMap);
         mv.addObject("list", list);
                    
        
        
        return mv;
    }
    
    //admin_member �Է�
    @RequestMapping(value="/Member_Insert.do")
    public ModelAndView insertBoard(CommandMap commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("redirect:/Admin_Member.do");
         
        sampleService.insertBoard(commandMap.getMap());
         
        return mv;
    }
    
    //�������Ajax
    @RequestMapping(value="/Member_ModifyAjax.do")
    public ModelAndView modifyBoard(CommandMap commandMap) throws Exception{
    	 ModelAndView mv1 = new ModelAndView("/Ajax_Modify");
    	    	 
         
    	 Map<String,Object> list = sampleService.selectModifyList(commandMap.getMap()); 
         
         mv1.addObject("list1", list);
         
                    
        
        
        return mv1;
    }
    //�������
    @RequestMapping(value="/Member_Modify.do")
    public ModelAndView updateBoard(CommandMap commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("redirect:/Admin_Member.do");
         
        sampleService.updateBoard(commandMap.getMap());
         
        return mv;
    }
    
    //�������
    @RequestMapping(value="Member_Delete.do")
    public ModelAndView deleteBoard(CommandMap commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("redirect:/Admin_Member.do");
         
        sampleService.deleteBoard(commandMap.getMap());
         
        return mv;
    }
    
    @RequestMapping(value="/Admin_Notice.do")
    public ModelAndView adminn_Notice(CommandMap commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("Admin_Notice");
         
        
         
        return mv;
    }
    
    @RequestMapping(value="/Admin_PictureList.do")
    public ModelAndView admin_PictureList(CommandMap commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("Admin_PictureList");
         
        
         
        return mv;
    }
    
    @RequestMapping(value="/Join.do")
    public ModelAndView join(CommandMap commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("Join");
         
        
         
        return mv;
    }
    
    
    
    
    
    
    
    
    
    
    
}
