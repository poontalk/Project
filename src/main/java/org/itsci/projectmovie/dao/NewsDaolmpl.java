package org.itsci.projectmovie.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.itsci.projectmovie.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class NewsDaolmpl implements NewsDao{

    @Autowired
    SessionFactory sessionFactory;
    @Override
    public List<News> getNewsFeed() {
        Session session = sessionFactory.getCurrentSession();
        Query<News> query = session.createQuery("from News",
                News.class);
        List<News> categories = query.getResultList();
        return categories;
    }

    @Override
    public void saveNews(News news) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(news);
    }

    @Override
    public News getNews(int id) {
        Session session = sessionFactory.getCurrentSession();
        News news = session.get(News.class, id);
        return news;
    }

    @Override
    public void deleteNews(int id) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("delete from News where  id=:id");
        query.setParameter("id", id);
        query.executeUpdate();
    }
}
