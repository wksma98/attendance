package test.spring.jun.controller;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import test.spring.jun.entity.Candidate;
import test.spring.jun.entity.User;
import test.spring.jun.repository.CandidateRepository;
import test.spring.jun.repository.FilesRepository;
import test.spring.jun.service.CandidateService;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;

@Controller
public class CandidateController {
    @Autowired
    private CandidateRepository candidateRepository;

    @Autowired
    private CandidateService candidateService;



    @GetMapping("/list")
    public List<Candidate> list(){
        List<Candidate> candidateList=candidateRepository.findAll();
        return candidateList;
    }
    @GetMapping("/candidate/candidateHome")
    public String lists(Model model){
        List<Candidate> candidateList = candidateRepository.findAll();
        model.addAttribute("candidateList",candidateList);
        return "/candidate/candidateHome";
    }

    @RequestMapping("/candidate/candidateCreate")
    public String create(){
       return "/candidate/candidateCreate";
    }

    @RequestMapping("/candidate/candidateCreateDB")
    public String create(@RequestParam("candidate_id") String id,
                         @RequestParam("candidate_type") String type,
                         @RequestParam ("candidate_recruit") String recruit,
                         @RequestParam("candidate_birth") String birth,
                         @RequestParam("candidate_attend") String attend,
                         @RequestParam("candidate_issue") String issue,
                         @RequestParam("exam_id") String exam_id,
                         @RequestParam("exam_place_id") String exam_place_id,
                         @RequestParam("candidate_exam_num") String candidate_exam_num, HttpServletRequest request, @RequestPart MultipartFile files)throws Exception{

        Candidate candidate = new Candidate();

        candidate.setCandidate_id(id);
        candidate.setCandidate_type(type);
        candidate.setCandidate_recruit(recruit);
        candidate.setCandidate_birth(Integer.parseInt(birth));
        candidate.setCandidate_attend(attend);
        candidate.setCandidate_issue(issue);
        candidate.setExam_id(exam_id);
        candidate.setExam_place_id(exam_place_id);
        candidate.setCandidate_exam_num(candidate_exam_num);

         if (!files.isEmpty()) {
            String sourceFileName = files.getOriginalFilename();
            String sourceFileNameExtension = FilenameUtils.getExtension(sourceFileName).toLowerCase();
            File destinationFile;
            String destinationFileName;
            String fileUrl = "C:\\StudySpring\\jun3\\src\\main\\webapp\\resources\\images\\";
            // mung-1은 자기 프로젝트이름으로 체인지!!

            do {
                destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + sourceFileNameExtension;;
                destinationFile = new File(fileUrl + destinationFileName);
            } while (destinationFile.exists());

            destinationFile.getParentFile().mkdirs();
            files.transferTo(destinationFile);

            candidate.setCandidate_ticket_photo(fileUrl);
            candidate.setCandidate_photo(destinationFileName);
            candidateService.createCandidate(candidate);
        }

        return "redirect:/candidate/candidateHome";
    }

}