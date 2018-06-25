package com.wojciechowski.project.repositories;

import org.springframework.data.repository.CrudRepository;

import com.wojciechowski.project.domain.User;

public interface UserRepository extends CrudRepository<User, Long> {
	User findByUsername(String username);
}
