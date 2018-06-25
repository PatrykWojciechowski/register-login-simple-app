package com.wojciechowski.project.services;

import com.wojciechowski.project.domain.User;

public interface UserService {

	void save(User user);

	User findByUsername(String username);

}
