package test.spring.jun.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import test.spring.jun.entity.Files;
import test.spring.jun.repository.FilesRepository;

import org.springframework.transaction.annotation.Transactional;

@Service
public class FilesService {

    @Autowired
    FilesRepository filesRepository;

    public void save(Files files) {
        Files f = new Files();
        f.setFile_ori_name(files.getFile_ori_name());
        f.setFileurl(files.getFileurl());

        filesRepository.save(f);
    }
}
