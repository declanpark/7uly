package org.july.www.com.web;

import javax.annotation.Resource;

import org.july.www.com.service.CommonService;
import org.july.www.com.vo.UserVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CommonController {
	
	private static final Logger logger = LoggerFactory.getLogger(CommonController.class);
	
	@Resource(name="commonService")
	private CommonService commonService;
	
	
	@RequestMapping(value="/main.do")
	public String main(Model model) {
		logger.info("MAIN.DO");
		model.addAttribute("title", "메인");
		return "main";
	}
	
	@RequestMapping(value="/com/moveUserList.do")
	public String moveUserList(Model model) {
		logger.info("moveUserList");
		model.addAttribute("title", "사용자목록");
		return "/com/userList";
	}
	@RequestMapping(value="/com/moveUserView.do")
	public String moveUserView(Model model) {
		logger.info("moveUserView");
		model.addAttribute("title", "사용자상세");
		return "/com/userView";
	}
	
	@ResponseBody 
	@RequestMapping(value="/com/getUser.do")
	public Object getUser(@RequestBody UserVO userVO) {
		return commonService.selectUser(userVO);
	}
	
	@ResponseBody 
	@RequestMapping(value="/com/insertUser.do")
	public Object insertUser(@RequestBody UserVO userVO) {
		
		int cnt = commonService.insertUser(userVO); 
		
		return cnt > 0 ? "저장되었습니다." : "저장에 실패했습니다.";
	}
}
