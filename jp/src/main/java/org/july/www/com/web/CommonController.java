package org.july.www.com.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
	
	
	
	@RequestMapping(value="/main.do")
	public String main() {
		return "main";
	}
	
	
	
}
