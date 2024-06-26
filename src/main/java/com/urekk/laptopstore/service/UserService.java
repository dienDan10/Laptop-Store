package com.urekk.laptopstore.service;

import com.urekk.laptopstore.domain.User;
import com.urekk.laptopstore.repository.UserRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    private UserRepository userRepository;

    public UserService(UserRepository userRepositoty) {
        this.userRepository = userRepositoty;
    }

    public void save(User user) {
        userRepository.save(user);
    }

    public List<User> findAll() {
        return userRepository.findAll();
    }

    public User findByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    public User findById(Long id) {
        return userRepository.findById(id).orElse(null);
    }

    public void deleteById(Long id) {
        userRepository.findById(id).ifPresent(user -> userRepository.delete(user));
    }
}
