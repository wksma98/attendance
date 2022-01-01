package test.spring.jun.repository;

import org.apache.ibatis.annotations.Select;
import org.springframework.data.jpa.repository.JpaRepository;
import test.spring.jun.entity.Candidate;

import java.util.Map;


public interface CandidateRepository extends JpaRepository<Candidate, String> {
}
