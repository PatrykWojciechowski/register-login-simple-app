package com.wojciechowski.project.forum.repositories;

import org.springframework.data.repository.CrudRepository;

import com.wojciechowski.project.forum.domain.Role;

public interface RoleRepository extends CrudRepository<Role, Long> {

}
