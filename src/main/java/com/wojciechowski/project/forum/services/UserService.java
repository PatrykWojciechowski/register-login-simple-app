package com.wojciechowski.project.forum.services;

import com.wojciechowski.project.forum.domain.User;

public interface UserService {

	void save(User user);

	User findByUsername(String username);

}
