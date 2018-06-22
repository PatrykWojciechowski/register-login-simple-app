package com.wojciechowski.project.forum.repositories;

import org.springframework.data.repository.CrudRepository;

import com.wojciechowski.project.forum.domain.User;

public interface UserRepository extends CrudRepository<User, Long> {
	User findByUsername(String username);
}
