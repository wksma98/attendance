package test.spring.jun.service;

public interface SecurityService {
    String findLoggedInUsername();

    void autoLogin(String username, String password);
}
