package com.wojciechowski.project.repositories;

import org.springframework.data.repository.CrudRepository;

import com.wojciechowski.project.domain.Role;

public interface RoleRepository extends CrudRepository<Role, Long> {
	Role findByName(String name);
}
