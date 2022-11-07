package org.itsci.projectmovie.service;

import org.itsci.projectmovie.model.News;

import java.util.List;

public interface NewsService {
    List<News> getNewsFeed();
    public void saveNews(News news);
    News getNews(int id);
    void deleteNews(int id);
}
