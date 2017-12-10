package org.july.www.com.web;

import javax.annotation.Resource;

import org.july.www.com.service.CommonService;
import org.july.www.com.vo.UserVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping(value="/com/getUser.do")
	public void getUser() {
		
		UserVO userVO = new UserVO();
		userVO.setUsid("admin");
		
		logger.info(commonService.selectUser(userVO).toString());
		
		
	}
	
}
