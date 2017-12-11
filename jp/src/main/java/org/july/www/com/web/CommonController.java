package org.july.www.com.web;

import java.util.List;

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
		return "main";
	}
	
	@ResponseBody 
	@RequestMapping(value="/com/getUser.do")
	public Object getUser(@RequestBody UserVO userVO) {
		
		List<UserVO> userList = commonService.selectUser(userVO);
		
		for (UserVO userVO2 : userList) {
			logger.info(userVO2.toString());
		}
		
		
		return userList;
	}
	
	
}
