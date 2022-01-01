package test.spring.jun.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import test.spring.jun.entity.User;


public interface UserRepository extends JpaRepository<User, String> {
    User findByUsername(String username);
}
