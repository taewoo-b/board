package com.spring.board.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.board.dto.NoticeVO;
import com.spring.board.service.NoticeService;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {

	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);
	 
	 @Inject
	 NoticeService service;
	 
	 // 글 작성 get
	 @RequestMapping(value = "/noticeWrite", method = RequestMethod.GET)
	 public void getWrite() throws Exception {
		 logger.info("get write");
	 }
	
	 // 글 작성 post
	 @RequestMapping(value = "/noticeWrite", method = RequestMethod.POST)
	 public String postWrite(NoticeVO vo) throws Exception {
		 logger.info("post write");
	  
		 service.write(vo);
	  
		 return "redirect:/";
	}
	 
	// 공지 리스트 get
	@RequestMapping(value = "/noticeList", method = RequestMethod .GET)
	public void getBoardList(Model model) throws Exception {
		logger.info("get notice list");
		
		List<NoticeVO> list = service.noticeList();
		model.addAttribute("list", list);
	}
	
	// 공지 리스트 post
	
	
	
}
