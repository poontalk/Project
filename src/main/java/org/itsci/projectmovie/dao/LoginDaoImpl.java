package org.itsci.projectmovie.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.itsci.projectmovie.model.Login;
import org.itsci.projectmovie.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

@Repository
public class LoginDaoImpl implements LoginDao{
    @Autowired
    private SessionFactory sessionFactory;

    public List<Login> getLogins() {
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Login> criteria = builder.createQuery(Login.class);
        Root<Login> root = criteria.from(Login.class);
        criteria.select(root);
        Query<Login> query = session.createQuery(criteria);
        List<Login> logins = query.getResultList();
        return logins;
    }

    @Override
    public void saveLogin(Login login) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(login);
    }
    @Override
    public Login getLogin(Long id) {
        Session session = sessionFactory.getCurrentSession();
        Login login = session.get(Login.class, id);
        return login;
    }
}
