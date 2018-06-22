package com.wojciechowski.project.forum.domain;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Entity
@Data
@EqualsAndHashCode(exclude= {"users"})
public class Role {
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String name;
	@ManyToMany(mappedBy = "roles")
	private Set<User> users;
}
