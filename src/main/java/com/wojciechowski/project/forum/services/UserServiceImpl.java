package com.wojciechowski.project.forum.services;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.wojciechowski.project.forum.domain.Role;
import com.wojciechowski.project.forum.domain.User;
import com.wojciechowski.project.forum.repositories.RoleRepository;
import com.wojciechowski.project.forum.repositories.UserRepository;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        
        // Method finAll from CrudRepository returns Iterable<Role> so we need to cast this to Set<Role>
        // This cast is simple but unsafe so REFACTOR THIS later!
        Iterable<Role> roles = roleRepository.findAll();
        Set<Role> setOfRoles = new HashSet<Role>((Collection)roles);
        
        user.setRoles(setOfRoles);
        userRepository.save(user);
    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }
	
}
