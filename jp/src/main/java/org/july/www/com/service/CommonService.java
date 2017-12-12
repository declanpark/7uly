package org.july.www.com.service;

import java.util.List;

import org.july.www.com.vo.UserVO;

public interface CommonService {
	public List<UserVO> selectUser(UserVO userVO);
	public int insertUser(UserVO userVO);
}
