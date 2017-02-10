package com.hep.service;

import javax.annotation.Resource;

import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.shiro.kit.ShiroKit;
import org.springframework.stereotype.Service;

import com.hep.dao.UserDao;
import com.hep.model.User;

@Service("userService")
public class UserService  {
	
	@Resource
	private UserDao userDao;

	public User login(String username, String password) {
		User u = userDao.loadByUsername(username);
		if(u==null) throw new UnknownAccountException("用户名或者密码出错");
		if(!u.getPassword().equals(ShiroKit.md5(password, username)))
			throw new IncorrectCredentialsException("用户名或者密码出错");
		if(u.getStatus()==0) throw new LockedAccountException("用户已经被锁定");
		
		

		return u;
	}

	
}
