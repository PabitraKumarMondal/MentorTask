package com.cognizant.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.dao.UserDAO;
import com.cognizant.model.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDAO dao;
	
	@Override
	public boolean isValidUser(User user) {
		// TODO Auto-generated method stub
		return dao.isValidUser(user);
	}

}
