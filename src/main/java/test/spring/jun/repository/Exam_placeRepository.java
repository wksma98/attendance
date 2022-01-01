package test.spring.jun.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import test.spring.jun.entity.Exam_place;

public interface Exam_placeRepository extends JpaRepository<Exam_place, String> {
}
