package org.july.www.com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.july.www.com.dao.CommonDAO;
import org.july.www.com.service.CommonService;
import org.july.www.com.vo.UserVO;
import org.springframework.stereotype.Service;

@Service("commonService")
public class CommonServiceImpl implements CommonService{
	
	@Resource(name="commonDAO")
	private CommonDAO commonDAO;
		
	public List<UserVO> selectUser(UserVO userVO) {
		return commonDAO.selectList("com.user.user_SQL.selectUser", userVO);
	}
}
