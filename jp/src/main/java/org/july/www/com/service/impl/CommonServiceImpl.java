package org.july.www.com.service.impl;

import javax.annotation.Resource;

import org.july.www.com.dao.CommonDAO;
import org.july.www.com.service.CommonService;
import org.july.www.com.vo.UserVO;
import org.springframework.stereotype.Service;

@Service
public class CommonServiceImpl implements CommonService{
	
	@Resource(name="commonDAO")
	private CommonDAO commonDAO;
		
	public UserVO selectUser(UserVO userVO) {
		return (UserVO) commonDAO.selectOne("com.user.user_SQL.selectUser", userVO);
	}
}
