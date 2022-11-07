package org.itsci.projectmovie.service;

import org.itsci.projectmovie.dao.LoginDao;
import org.itsci.projectmovie.model.Login;
import org.itsci.projectmovie.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class LoginServiceImpl implements LoginService{

        @Autowired
        private LoginDao loginDao;

    @Override
    @Transactional
    public List<Login> getLogins() {
        return loginDao.getLogins();
    }
    @Override
    @Transactional
    public void saveLogin(Login login) {
        loginDao.saveLogin(login);
    }
    @Override
    @Transactional
    public Login getLogin(Long id) {
        return loginDao.getLogin(id);
    }
}
