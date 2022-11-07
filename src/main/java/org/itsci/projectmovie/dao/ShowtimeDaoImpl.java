package org.itsci.projectmovie.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.itsci.projectmovie.model.Showtime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ShowtimeDaoImpl implements ShowtimeDao{

    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public List<Showtime> getShowtime() {
        Session session = sessionFactory.getCurrentSession();
        Query<Showtime> query = session.createQuery("from Showtime", Showtime.class);
        List<Showtime> Showtime = query.getResultList();
        return Showtime;
    }

    @Override
    public void saveShowtime(Showtime showtime) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(showtime);
    }

    @Override
    public Showtime getShowtime(int Sid) {
        Session session = sessionFactory.getCurrentSession();
        Showtime showtime = session.get(Showtime.class, Sid);
        return showtime;
    }

    @Override
    public void deleteShowtime(int Sid) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("delete from Showtime where Sid=:Sid");
        query.setParameter("Sid", Sid);
        query.executeUpdate();
    }
}
