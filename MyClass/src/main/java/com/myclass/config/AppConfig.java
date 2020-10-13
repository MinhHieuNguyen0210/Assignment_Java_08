package com.myclass.config;

import org.springframework.context.annotation.Bean;

import com.myclass.dao.IUserDao;
import com.myclass.dao.UserDao;
import com.myclass.service.IUserService;
import com.myclass.service.UserService;

public class AppConfig {
	@Bean
	
	public IUserDao userDao() {
		return new UserDao();
	}
	
	@Bean
	
	public IUserService userService() {
		return new UserService(userDao());
	}
	
}
