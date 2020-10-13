package com.myclass.service;

import com.myclass.dao.IUserDao;
import com.myclass.dao.UserDao;
import com.myclass.entity.User;

public class UserService implements IUserService {
	IUserDao userDao = null;

	public UserService(IUserDao userDao) {
		this.userDao =  userDao;
	}

	public void transferMoney(String fromId, String toId, float money) {
		User source = userDao.findById(fromId);

		User target = userDao.findById(toId);
		
		source.setBalance(source.getBalance() - money);
		
		target.setBalance(target.getBalance() + money);
		
		userDao.update(source);
		userDao.update(target);
		

	}

	public User getById(String id) {
		User user = userDao.findById(id);
		return user;
	}
}
