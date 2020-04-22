package com.cognizant.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.cognizant.model.User;

@Repository
@Qualifier("dao")
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private NamedParameterJdbcTemplate jdbcTemplate;
	
	@Override
	public boolean isValidUser(User user) {
		Map<String, Object> params = new HashMap<>();
	    params.put("userName", user.getUserName());
	    params.put("password", user.getPassword());
		List<User> userList = jdbcTemplate.query("SELECT * FROM user where user_name=:userName and password=:password", params,
				(rs,rowNum) -> new User(rs.getString(2),rs.getString(3))
				);
		if(userList.size()==1)
			return true;
		else
			return false;
	}

}
