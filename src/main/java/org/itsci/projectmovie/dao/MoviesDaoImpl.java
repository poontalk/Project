package org.itsci.projectmovie.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.itsci.projectmovie.model.Movies;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MoviesDaoImpl implements MovieDao{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Movies> getMovies() {
        Session session = sessionFactory.getCurrentSession();
        Query<Movies> query = session.createQuery("from Movies", Movies.class);
        List<Movies> Movies = query.getResultList();
        return Movies;
    }

    @Override
    public void saveMovies(Movies movie) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(movie);
    }

    @Override
    public Movies getMovies(int id) {
        Session session = sessionFactory.getCurrentSession();
        Movies movie = session.get(Movies.class, id);
        return movie;
    }

    @Override
    public void deleteMovies(int id) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("delete from Movies where Mid=:id");
        query.setParameter("id", id);
        query.executeUpdate();
    }
}
