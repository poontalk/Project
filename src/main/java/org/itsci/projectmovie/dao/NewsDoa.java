package org.itsci.projectmovie.dao;

import org.itsci.projectmovie.model.News;

import java.util.List;

public interface NewsDoa {
    List<News> getNewsFeed();
    void saveNews(News news);
    News getNews(int id);
    void deleteNews(int id);
}
