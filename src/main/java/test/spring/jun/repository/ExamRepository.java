package test.spring.jun.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import test.spring.jun.entity.Exam;

public interface ExamRepository extends JpaRepository<Exam,String> {
}
