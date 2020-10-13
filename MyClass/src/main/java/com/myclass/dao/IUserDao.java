package com.myclass.dao;

import com.myclass.entity.User;

public interface IUserDao {
	public void update(User user);

	public User findById(String id);

}
