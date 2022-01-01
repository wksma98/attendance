package test.spring.jun.controller;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import test.spring.jun.entity.Files;
import test.spring.jun.service.FilesService;

import javax.servlet.http.HttpServletRequest;
import java.io.File;

@Controller
public class FileController {
    @Autowired
    private FilesService filesService;

    @RequestMapping("/insert")
    public String Insert() {

        return "/insert";
    }

    @RequestMapping("/fileinsert")
    public String fileinsert(HttpServletRequest request, @RequestPart MultipartFile files) throws Exception{
        Files file = new Files();

            String sourceFileName = files.getOriginalFilename();
            String sourceFileNameExtension = FilenameUtils.getExtension(sourceFileName).toLowerCase();
            File destinationFile;
            String destinationFileName;
            String fileUrl = "C:/spring_study/jun/src/main/resources/images/";
        // mung-1은 자기 프로젝트이름으로 체인지!!

            do {
                destinationFileName = files.getOriginalFilename() + "." + sourceFileNameExtension;
                destinationFile = new File(fileUrl + destinationFileName);
            } while (destinationFile.exists());

            destinationFile.getParentFile().mkdirs();
            files.transferTo(destinationFile);

            file.setFile_ori_name(sourceFileName);
            file.setFileurl(fileUrl);
            filesService.save(file);

            return "redirect:/candidate/candidateHome";
    }
}
