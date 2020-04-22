package com.cognizant.dao;

import org.springframework.stereotype.Repository;

import com.cognizant.model.User;

@Repository
public interface UserDAO {
	boolean isValidUser(User user);
}
