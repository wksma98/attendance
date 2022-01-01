package test.spring.jun.service;

import test.spring.jun.entity.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
