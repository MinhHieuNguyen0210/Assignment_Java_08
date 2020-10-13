package com.myclass.dao;

import java.util.ArrayList;
import java.util.List;

import com.myclass.entity.User;
import com.myclass.service.IUserService;

public class UserDao implements IUserDao{
	List<User> listUser = null;

	public UserDao() {
		listUser = new ArrayList<User>();

		listUser.add(new User("1", "Nguyen Minh Hieu", 10000));
		listUser.add(new User("2", "Nguyen Minh Hai", 10000));
		listUser.add(new User("3", "Nguyen Minh Ba", 10000));

	}

	public void update(User user) {
		for (User item : listUser) {
			if (user.getId().equals(item.getId())) {
				item.setName(user.getName());
				item.setBalance(user.getBalance());
			}
		}
	}

	public User findById(String id) {
		for (User user : listUser) {
			if (user.getId().equals(id)) {
				return user;
			}
		}
		return null;
	}
}
