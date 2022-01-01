package test.spring.jun.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import test.spring.jun.entity.Files;

public interface FilesRepository extends JpaRepository<Files, Integer> {
    Files findByFno(int fno);
}
