package org.itsci.projectmovie.service;

import org.itsci.projectmovie.dao.NewsDao;
import org.itsci.projectmovie.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class NewsServiceImpl implements  NewsService{

    @Autowired
    private NewsDao newsDoa;

    @Override
    @Transactional
    public List<News> getNewsFeed() {
        return newsDoa.getNewsFeed();
    }

    @Override
    @Transactional
    public void saveNews(News news) {
        newsDoa.saveNews(news);
    }

    @Override
    @Transactional
    public News getNews(int id) {
        return newsDoa.getNews(id);
    }

    @Override
    @Transactional
    public void deleteNews(int id) {
        newsDoa.deleteNews(id);
    }

    @Override
    @Transactional
    public void updateNews(News NewsEntity, News news) {
        NewsEntity.fill(news);
        saveNews(news);
    }


}