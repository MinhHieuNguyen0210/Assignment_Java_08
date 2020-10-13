package com.myclass.service;

import com.myclass.entity.User;

public interface IUserService {
	public void transferMoney(String fromId, String toId, float money);

	public User getById(String id);
}
