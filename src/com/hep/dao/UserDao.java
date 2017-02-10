package com.hep.dao;

import org.springframework.stereotype.Repository;

import com.hep.model.User;

@Repository
public interface UserDao {
	
	public User loadByUsername(String username);

	

}
