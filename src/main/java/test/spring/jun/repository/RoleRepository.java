package test.spring.jun.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import test.spring.jun.entity.Role;


public interface RoleRepository extends JpaRepository<Role, String> {
}
