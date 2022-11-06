package org.itsci.projectmovie.service;

import org.itsci.projectmovie.model.Login;

import java.util.List;

public interface LoginService {
    List<Login> getLogins();
    void saveLogin(Login login);
    Login getLogin(Long id);

}
