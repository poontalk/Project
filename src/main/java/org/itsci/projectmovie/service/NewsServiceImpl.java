package org.itsci.projectmovie.service;

import org.itsci.projectmovie.dao.NewsDoa;
import org.itsci.projectmovie.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class NewsServiceImpl implements  NewsService{

    @Autowired
    private NewsDoa newsDoa;

    @Override
    @Transactional
    public List<News> getNewsFeed() {
        return newsDoa.getNewsFeed();
    }

    @Override
    public void saveNews(News news) {
        newsDoa.saveNews(news);
    }

    @Override
    public News getNews(int id) {
        return newsDoa.getNews(id);
    }

    @Override
    public void deleteNews(int id) {
        newsDoa.deleteNews(id);
    }
}
