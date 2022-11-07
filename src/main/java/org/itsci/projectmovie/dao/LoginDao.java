package org.itsci.projectmovie.dao;

import org.itsci.projectmovie.model.Login;

import java.util.List;

public interface LoginDao {

    List<Login> getLogins();
    void saveLogin(Login login);
    Login getLogin(Long id);

}
