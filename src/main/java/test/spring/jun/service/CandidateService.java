package test.spring.jun.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import test.spring.jun.entity.Candidate;
import test.spring.jun.repository.CandidateRepository;

import java.util.List;

@Service
public class CandidateService {

    @Autowired
    private CandidateRepository candidateRepository;

    public List<Candidate> findCandidate(){return candidateRepository.findAll();}


    public void createCandidate(Candidate candidate){

        candidateRepository.save(candidate);
    }
}
